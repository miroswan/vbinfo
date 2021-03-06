require 'rubygems'
require 'bundler'
require 'bundler/setup'
require_relative 'tests/integration/spec/spec_helper'
require 'rspec/core/rake_task'

# Immediately sync 
$stdout.sync = true
$stderr.sync = true

begin 
  desc "Run RSpec tests for a single vm" 
  RSpec::Core::RakeTask.new(:single) do |spec|
    spec.pattern = 'tests/integration/spec/single_spec.rb'
    spec.rspec_opts = '--color'
    spec.rspec_opts = '-fd'
  end

  desc "Run RSpec tests for two vms"
  RSpec::Core::RakeTask.new(:double) do |spec|
    spec.pattern = 'tests/integration/spec/double_spec.rb'
    spec.rspec_opts = '--color'
    spec.rspec_opts = '-fd'
  end

  desc "Cleanup VMs"
  task :clean do
    Helper.destroy_existing_vms
  end

  # Declare test dependencies
  task :test => [:single, :double, :clean]

  # Set default to test
  task :default => :test

ensure
  Helper.destroy_existing_vms
end

# This gives us exposure to some rasks related 
# to packaging, installing, and releasing the
# gem. Run rake -T to see the list of available
# tasks
Dir.chdir(File.expand_path("../", __FILE__))
Bundler::GemHelper.install_tasks
