#!/usr/bin/env ruby

require_relative 'spec_helper'

RSpec.describe 'vbinfo' do
  before(:all) do 
    Helper.setup
  end

  describe 'when configured with two VMs' do     
    vfile = <<-VFILE
Vagrant.configure(2) do |config|
  config.vm.box = 'hashicorp/precise64'
  config.vm.define 'one' do |one|
    one.vm.hostname = 'one'
    one.vm.provider 'virtualbox' do |v|
      v.memory = '256'
    end
  end
  config.vm.define 'two' do |two|
    two.vm.hostname = 'two'
    two.vm.provider 'virtualbox' do |v|
      v.memory = '256'
    end
  end 
end
      VFILE

    hash = Helper.prep_test(vfile)

    it 'output should be a hash' do
      expect(hash.class).to eql(Hash)
    end

    it 'hash should have two root objects' do
      expect(hash.size).to eql(2)
    end

    it 'first vm should have vm_info: memory' do 
      expect(hash['one']['vm_info']['memory']).to eql('256')
    end

    it 'second vm should have vm_info: memory' do
      expect(hash['two']['vm_info']['memory']).to eql('256')
    end

    it 'first vm should contain guest key: /VirtualBox/GuestInfo/Net/0/V4/IP' do
      expect(hash['one']['guest_info'].has_key?('/VirtualBox/GuestInfo/Net/0/V4/IP')).to be true
    end

    it 'second vm should contain guest key: /VirtualBox/GuestInfo/Net/0/V4/IP' do
      expect(hash['two']['guest_info'].has_key?('/VirtualBox/GuestInfo/Net/0/V4/IP')).to be true
    end
  end
end