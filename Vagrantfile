Vagrant.configure("2") do |config|
  config.vm.define ENV['HOST_NAME'] do |t|
  end
  config.vm.box = "ubuntu/bionic64"
  config.vm.network "public_network"
  config.vm.hostname = ENV['HOST_NAME']
  config.vm.provider "virtualbox" do |v|
    v.name = ENV['HOST_NAME']
    v.memory = ENV['HOST_MEM']
    v.cpus = ENV['HOST_CORE']
  end
  config.vm.provision "shell", path: "script.sh"
  config.disksize.size = ENV['HOST_DISK']
end
