# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # setup the vm
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.hostname = "DevBox"

  # get it updated and install some required stuff
  config.vm.provision :shell, :inline => "sudo apt-get update"
  config.vm.provision :shell, :inline => "sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::='--force-confdef' -o Dpkg::Options::='--force-confold' upgrade"
  config.vm.provision :shell, :inline => "sudo apt-get install -y build-essential git python libssl-dev screen vim"

  # a few customizations
  config.vm.provision :shell, :inline => "cp /vagrant/screenrc /home/vagrant/.screenrc"
  config.vm.provision :shell, :inline => "cp /vagrant/vimrc /home/vagrant/.vimrc"


  config.vm.define :wordpress do |this_config|

    # install required software
    this_config.vm.provision :shell, :inline => "sudo apt-get -y install apache2 wget"
    this_config.vm.provision :shell, :inline => "sudo apt-get -y install php5 libapache2-mod-php5"
    this_config.vm.provision :shell, :inline => "sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password vagrant'"
    this_config.vm.provision :shell, :inline => "sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password vagrant'"
    this_config.vm.provision :shell, :inline => "sudo apt-get -y install mysql-server"
    this_config.vm.provision :shell, :inline => "sudo apt-get -y install php5-mysql"

    # setup the web server
    this_config.vm.provision :shell, :inline => "sudo rm -rf /var/www"
    this_config.vm.provision :shell, :inline => "sudo ln -fs /vagrant /var/www"
    this_config.vm.provision :shell, :inline => "sudo /etc/init.d/apache2 restart"

    # setup the database server
    this_config.vm.provision :shell, :inline => "mysql -h localhost -u root -pvagrant -e 'CREATE DATABASE wordpress;'"
    this_config.vm.provision :shell, :inline => "mysql -h localhost -u root -pvagrant -D wordpress < /vagrant/backup.sql"
    this_config.vm.provision :shell, :inline => "mysql -h localhost -u root -pvagrant -e 'update wp_options set option_value = \'http://localhost:8888/\' where option_name = \'siteurl\';'"

    # setup the wordpress site
    this_config.vm.provision :shell, :inline => "wget http://wordpress.org/latest.tar.gz"
    this_config.vm.provision :shell, :inline => "tar -xvf latest.tar.gz /vagrant/"
    this_config.vm.provision :shell, :inline => "rm latest.tar.gz"
    this_config.vm.provision :shell, :inline => "cp /vagrant/wp-config-sample.php /vagrant/wp-config.php"
    this_config.vm.provision :shell, :inline => "sed -i 's/database_name_here/wordpress/g' /vagrant/wp-config.php"
    this_config.vm.provision :shell, :inline => "sed -i 's/username_here/root/g' /vagrant/wp-config.php"
    this_config.vm.provision :shell, :inline => "sed -i 's/password_here/vagrant/g' /vagrant/wp-config.php"

  end


end