ENV['VAGRANT_DEFAULT_PROVIDER'] = 'libvirt'
# -*- mode: ruby -*-
# vi: set ft=ruby :

$zoneinfo = <<SCRIPT
ln -sf /usr/share/zoneinfo/Asia/Nicosia /etc/localtime
SCRIPT

Vagrant.configure("2") do |config|

  config.vm.box = "debian/jessie64"
  #config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.provider "libvirt" do |vb|
      vb.memory = 2048
      vb.cpus = 2
      vb.storage :file, :size => '20G'
  end
  
  config.vm.hostname = "jessie64"
  config.vm.provision "shell", inline: $zoneinfo

end
