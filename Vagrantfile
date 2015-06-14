Vagrant.configure(2) do |config|
  config.vm.box = "hashicorp/precise64"
  config.vm.define "one" do |one|
    one.vm.hostname = "one"
    one.vm.provider "virtualbox" do |v|
      v.memory = 512
    end
  end
  config.vm.define "two" do |two|
    two.vm.hostname = "two"
    two.vm.provider "virtualbox" do |v|
      v.memory = 1024
    end
  end
end
