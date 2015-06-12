#!/usr/bin/env ruby

require 'vagrant'

module Vbinfo
  class Plugin < Vagrant.plugin("2")
    name "vbinfo command"
    description <<-DESC
    The `vbinfo` command gives you detailed information for 
    configured virtualbox vms
    DESC

    command("vbinfo") do
      require File.expand_path("../command", __FILE__)
      Command
    end
  end
end

