#!/usr/bin/env ruby

require_relative "vbinfo/version"
require 'vagrant'

module Vbinfo
  class Plugin < Vagrant.plugin("2")
    name "vbinfo command"
    description <<-DESC
    The `vbinfo` command gives you detailed information for 
    configured virtualbox vms
    DESC

    command("vbinfo") do
      require_relative 'command'
      Command
    end
  end
end

