#!/usr/bin/env ruby

require_relative "vbinfo/version"
require 'vagrant'

module Vbinfo
  class VBinfo < Vagrant.plugin(2, :command)
    name "vbinfo command"
    description "The `vbinfo` command gives you detailed information for configured virtualbox vms"

    command "vbinfo" do
      require_relative 'command'
      Vbinfo::Command
    end
  end
end

