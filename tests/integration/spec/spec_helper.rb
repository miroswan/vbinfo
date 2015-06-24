#/usr/bin/env ruby

require 'rspec'
require 'json'
require 'fileutils'

# Helper methods for tests and rake activities. 
module Helper

  # For destroying all vms that match vbinfo. 
  def self.destroy_existing_vms

    sleep 2
    
    output = `vboxmanage list vms`
    vms = output.scan(/vbinfo[^\"]*/)
    vms.each do |vm|
      `vboxmanage controlvm #{vm} poweroff 2> /dev/null`
      sleep 2
      `vboxmanage unregistervm #{vm} --delete 2> /dev/null`
      sleep 2
    end
  end

  # To be executed in a before rspec hook
  def self.setup
    # Destroy previous vms
    destroy_existing_vms

    # Remove data dir if present
    if File.directory?('.vagrant')
      FileUtils.rm_rf('.vagrant')
    end

    # Remove Vagrantfile if present
    if File.exist?('Vagrantfile')
      File.delete('Vagrantfile')
    end

    # initialize vagrant in project dir
    `bundler exec vagrant init`
  end

  # Normally, there would just be one block of
  # code passed to the before rspec hook to execute
  # code before the examples. However, there is a 
  # need to pass in values and before doesn't take 
  # an arbitrary list. We'll just execute this method
  # in each test and pass the Vagrantfile as a raw
  # string to further prepare the directory for testing. 
  def self.prep_test(vfile)
    begin
      f = File.open('Vagrantfile', 'w')
      f.write(vfile)
    ensure
      f.close
    end

    # Execute plugin
    `bundler exec vagrant up`
    json = `bundler exec vagrant vbinfo`
    # Strip warning string that we are executing in a
    # non-standard environment (dev env)
    json.sub!(/[^{]*?(?={)/,'')
    hash = JSON.parse(json)
  end

end






