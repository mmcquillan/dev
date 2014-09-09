# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # setup the vm
  config.vm.box = "ubuntu/trusty32"
  config.vm.hostname = "DevBox"

  # get it updated and install some required stuff
  config.vm.provision :shell, :inline => "sudo apt-get update"
  config.vm.provision :shell, :inline => "sudo apt-get install -y screen vim curl git build-essential"

  # a few customizations
  config.vm.provision :shell, :inline => "sed 's/\r//' /vagrant/screenrc > /home/vagrant/.screenrc"
  config.vm.provision :shell, :inline => "sed 's/\r//' /vagrant/vimrc > /home/vagrant/.vimrc"

end
