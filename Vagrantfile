Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.network "private_network", ip: "192.168.20.100"

  config.vm.provider "virtualbox" do |vb|
     vb.memory = "4096"
  end

  config.vm.provision "shell", path: "kafka-install.sh"
end
