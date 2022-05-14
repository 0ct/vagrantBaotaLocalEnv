# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"
  config.vm.network "forwarded_port", guest: 8888, host: 8888
  config.vm.provider "virtualbox" do |vb|
    vb.name = "pikachu"
    vb.gui = false
    vb.cpus =2
    vb.memory = "2048"
  end
  config.vm.provision "shell", inline: <<-SHELL
    cp -f /vagrant/scripts/sources.list /etc/apt/sources.list
    apt-get update
    apt-get upgrade -y
    apt-get clean
    bash /vagrant/scripts/init.sh
  SHELL
end
