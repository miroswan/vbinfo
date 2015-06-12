#!/usr/bin/env ruby

require_relative "vbinfo/version"
require 'find'
require 'mixlib/shellout'


module Vbinfo
  module CommandVbinfo
    module Helpers
      def ids
        i = []
        Find.find("#{ENV['PWD']}/.vagrant") do |item|
          if File.file?(item) and File.basename(item) == 'id'
            id = File.open(item).read
            i << id
          end
        end
        return i
      end

      def get_info(id)
        check = Mixlib::ShellOut.new("which vboxmanage")
        check.run_command
        if check.stdout.empty?
          assert Vagrant::Errors::VagrantError::CommandUnavailable, file: 'vboxmanage'
          exit 1
        end
        output = Mixlib::ShellOut.new("vboxmanage showvminfo #{id}")
        output.run_command
        return output.stdout
      end
    end

    class VBinfo < Vagrant.plugin(2, :command)
      name "vbinfo command"
      description "The `vbinfo` command gives you detailed information for configured virtualbox vms"

      command "vbinfo" do
        require_relative 'command'
        Vbinfo::Command
      end
    end
  end
end

