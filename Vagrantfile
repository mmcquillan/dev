# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # setup the vm
  config.vm.box = "hashicorp/precise32"
  config.vm.hostname = "DevBox"

  # get it updated and install some required stuff
  config.vm.provision :shell, :inline => "sudo apt-get update"
  config.vm.provision :shell, :inline => "sudo apt-get install -y screen vim curl git"

  # a few customizations
  config.vm.provision :shell, :inline => "cp /vagrant/screenrc /home/vagrant/.screenrc"
  config.vm.provision :shell, :inline => "cp /vagrant/vimrc /home/vagrant/.vimrc"

end