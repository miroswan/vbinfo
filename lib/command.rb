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
          file = File.open(item)
          h["id"] = file.read
          # the name will be in /<name>/virtualbox/id of path
          regex_obj = Regexp.new('[^\/]*(?=/virtualbox)')
          h["name"] = item[regex_obj]
          a << h
          file.close
        end
      end
      return a
    end

    # Check for vboxmanage and exit 1 if not available
    def vboxmanage?
      # Fail if vboxmanage does not exist in the path
      if not Vagrant::Util::Which.which('vboxmanage')
        raise Vagrant::Errors::CommandUnavailable, file: 'vboxmanage'
        exit 1
      else
        true
      end
    end

    # Print detailed info for the given VM ID
    def show_vm_info(id)
      if vboxmanage?
        # Return the output
        command = Mixlib::ShellOut.new("vboxmanage showvminfo --machinereadable #{id}")
        command.run_command
        return command.stdout
      end 
    end

    # Get hash
    def get_vm_hash(str)
      h = Hash.new
      lines = str.split("\n")
      lines.each do |line|
        key, val = line.split("=")
        [key, val].each do |item|
          item.tr!('"', '')
        end       
        h[key.to_s] = val.to_s
      end
      return h
    end

    def enumerate_guest_info(id)
      if vboxmanage?
        command = Mixlib::ShellOut.new("vboxmanage guestproperty enumerate #{id}")
        command.run_command
        return command.stdout
      end
    end

    def get_guest_hash(str)
      h = Hash.new
      lines = str.split("\n")
      lines.each do |line|
        name_match = Regexp.new("(?<=Name: )[^,]*")
        value_match = Regexp.new("(?<=value: )[^,]*")
        name = line[name_match]
        value = line[value_match]
        h[name] = value
      end
      return h
    end

    # Print detailed information for each Virtualbox VM associated with 
    # the project in the current directory
    def execute
      total_hash = Hash.new
      ids.each do |id|
        mini_hash = Hash.new
        name = id['name']
        i = id['id']
        guest_str = enumerate_guest_info(i).to_s
        guest_hash = get_guest_hash(guest_str)
        mini_hash['guest_info'] = guest_hash
        vm_str = show_vm_info(i).to_s
        vm_hash = get_vm_hash(vm_str)
        mini_hash['vm_info'] = vm_hash
        total_hash[name] = mini_hash 
      end
      if total_hash.empty? 
        @env.ui.info("No Virtualbox data was found")
      else
        @env.ui.info(JSON.pretty_generate(total_hash))
      end
      exit 0
    end
  end
end
