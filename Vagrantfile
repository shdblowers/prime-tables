# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.synced_folder "./", "/prime-tables"
  config.vm.provision "shell", path: "./vagrant/bootstrap.sh"
end
