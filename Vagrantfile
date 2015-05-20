# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/trusty64"
  #config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.provider "virtualbox" do |vb|
  #  vb.gui = true
    vb.customize ["modifyvm", :id, "--memory", "2048", "--cpus", "2"]
  end
  config.vm.hostname = "trusty64"
  config.vm.provision "shell", path: "base.sh"

end
