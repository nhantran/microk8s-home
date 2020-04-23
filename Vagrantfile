$script = <<-'SCRIPT'
sudo snap wait system seed.loaded
sudo snap install microk8s --classic --channel=1.18/stable
sudo wget https://microk8s.io/docs/containerd-template.toml -O /var/snap/microk8s/current/args/containerd-template.toml
sudo sed -i "s/10.141.241.175:32000/$1/g" /var/snap/microk8s/current/args/containerd-template.toml
sudo usermod -a -G microk8s $USER
sudo chown -f -R $USER ~/.kube
echo "vagrant" | su - $USER
SCRIPT

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
  config.vm.provision "shell" do |s|
    s.inline = $script
    s.args   = "#{ENV['REGISTRY_ENDPOINT']}"
  end
  config.disksize.size = ENV['HOST_DISK']
end
