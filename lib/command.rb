#!/usr/bin/env ruby

require 'find'
require 'mixlib/shellout'
require 'vagrant'
require 'optparse'

module Vbinfo
  class Command < Vagrant.plugin("2", :command)

    def self.synopsis
      "outputs information for each Virtualbox VM"
    end

    # Return an array of vm IDs for the vagrant project in the
    # current directory
    def vbinfo_vm_ids
      i = []
      Find.find("#{ENV['PWD']}/.vagrant") do |item|
        if File.file?(item) and File.basename(item) == 'id'
          id = File.open(item).read
          i << id
        end
      end
      return i
    end


    # Print detailed info for the given VM ID
    def vbinfo_get_info(id)
      # Fail if vboxmanage does not exist in the path
      check = Mixlib::ShellOut.new("which vboxmanage")
      check.run_command
      if check.stdout.empty?
        assert Vagrant::Errors::VagrantError::CommandUnavailable, file: 'vboxmanage'
        exit 1
      end
      # Return the output
      output = Mixlib::ShellOut.new("vboxmanage showvminfo #{id}")
      output.run_command
      return output.stdout
    end

    # Print detailed information for each Virtualbox VM associated with 
    # the project in the current directory
    def execute
      opts = OptionParser.new do |o|
        o.banner = "Usage: vagrant vbinfo"
      end

      vbinfo_vm_ids.each do |id|
        @env.ui.info("#{vbinfo_get_info(id).to_s}")
      end
      exit 0
    end
  end
end