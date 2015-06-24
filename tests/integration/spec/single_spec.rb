#!/usr/bin/env ruby

require_relative 'spec_helper'

RSpec.describe 'vbinfo' do

  before(:all) do 
    Helper.setup
  end

  describe 'when configured with one VM' do 
    
    vfile = <<-VFILE
Vagrant.configure(2) do |config|
  config.vm.box = "hashicorp/precise64"
  config.vm.hostname = 'testbox'
  config.vm.provider 'virtualbox' do |v|
    v.memory = 512
  end
end
    VFILE

    hash = Helper.prep_test(vfile)

    it 'output should be a hash' do
      expect(hash.class).to eq(Hash)
    end

    it 'hash should have one root value' do
      expect(hash.size).to eq(1)
    end

    it 'hash should contain vm_info: memory' do 
      expect(hash['default']['vm_info']['memory']).to eq('512')
    end

    it 'hash should contain guest key: /VirtualBox/GuestInfo/Net/0/V4/IP' do
      expect(hash['default']['guest_info'].has_key?('/VirtualBox/GuestInfo/Net/0/V4/IP')).to be true    
    end
  end
end