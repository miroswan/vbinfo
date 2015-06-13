#!/usr/bin/env ruby

require 'vagrant'

module Vbinfo
  class Plugin < Vagrant.plugin("2")
    name "vbinfo"
    description <<-DESC
    The `vbinfo` command gives you detailed information for 
    configured virtualbox vms
    DESC

    command("vbinfo") do
      require_relative "command"
      Command
    end
  end
end

