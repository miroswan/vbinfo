#!/usr/bin/env ruby

require 'find'
require 'mixlib/shellout'
require 'vagrant'
require 'optparse'
require 'json'

module Vbinfo
  class Command < Vagrant.plugin("2", :command)

    def self.synopsis
      "outputs information for each Virtualbox VM"
    end

    # return an array of hashes, each hash containing the 
    # name and id. Single VM configurations typically are
    # named default, while multiple VM configurations
    # are named individually. 
    def ids
      a = Array.new
      Find.find("#{ENV['PWD']}/.vagrant") do |item|
        if File.file?(item) and File.basename(item) == 'id'
          h = Hash.new
          # Id will be found in the id file
          h["id"] = File.open(item).read
          # the name will be in /<name>/virtualbox/id of path
          regex_obj = Regexp.new('[^\/]*(?=/virtualbox)')
          h["name"] = item[regex_obj]
          a << h
        end
      end
      return a
    end


    # Print detailed info for the given VM ID
    def get_info(id)
      # Fail if vboxmanage does not exist in the path
      check = Mixlib::ShellOut.new("which vboxmanage")
      check.run_command
      if check.stdout.empty?
        assert Vagrant::Errors::VagrantError::CommandUnavailable, file: 'vboxmanage'
        exit 1
      end
      # Return the output
      output = Mixlib::ShellOut.new("vboxmanage showvminfo --machinereadable #{id}")
      output.run_command
      return output.stdout
    end

    # Get hash
    def get_hash(str)
      h = Hash.new
      lines = str.split("\n")
      lines.each do |item|
        key, val = item.split("=")
        val = val.tr('"', '')
        h[key.to_s] = val.to_s
      end

      return h

    end

    # Print detailed information for each Virtualbox VM associated with 
    # the project in the current directory
    def execute
      # opts = OptionParser.new do |o|
      #   o.banner = "Usage: vagrant vbinfo"
      # end

      total_hash = Hash.new
      ids.each do |id|
        str = get_info(id['id'])
        local_hash = get_hash(str)
        name = id['name']
        total_hash[name] = local_hash
      end
      puts JSON.pretty_generate(total_hash)
      exit 0
    end
  end
end
