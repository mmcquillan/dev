# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  #### setup the vm
  config.vm.box = "ubuntu/trusty32"
  config.vm.hostname = "DevBox"

  #### standard
  config.vm.provision :shell, :inline => "sed 's/\r//' /vagrant/screenrc > /home/vagrant/.screenrc"
  config.vm.provision :shell, :inline => "sed 's/\r//' /vagrant/vimrc > /home/vagrant/.vimrc"
  config.vm.provision :shell, :inline => "sudo apt-get install -y screen vim curl wget git build-essential"

  #### node
  # config.vm.provision :shell, :inline => "sudo apt-get install -y node npm"

  #### lamp
  # config.vm.provision :shell, :inline => "sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password vagrant'"
  # config.vm.provision :shell, :inline => "sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password vagrant'"
  # config.vm.provision :shell, :inline => "sudo apt-get install -y apache2 php5 libapache2-mod-php5"
  # config.vm.provision :shell, :inline => "sudo apt-get install -y mysql-server php5-mysql"
  # config.vm.provision :shell, :inline => "sudo /etc/init.d/apache2/restart"

  #### wordpress (requires lamp)
  # config.vm.provision :shell, :inline => "sudo rm -rf /var/www"
  # config.vm.provision :shell, :inline => "sudo ln -fs /vagrant /var/www"
  # config.vm.provision :shell, :inline => "sudo /etc/init.d/apache2/restart"
  # config.vm.provision :shell, :inline => "mysql -h localhost -u root -pvagrant -e 'CREATE DATABASE wordpress;'"
  # config.vm.provision :shell, :inline => "mysql -h localhost -u root -pvagrant -D wordpress < /vagrant/backup.sql"
  # config.vm.provision :shell, :inline => "mysql -h localhost -u root -pvagrant -e 'update wp_options set option_value = \'http://localhost:8888/\' where option_name = \'siteurl\';'"
  # config.vm.provision :shell, :inline => "wget http://wordpress.org/latest.tar.gz"
  # config.vm.provision :shell, :inline => "tar -xvf latest.tar.gz /vagrant/"
  # config.vm.provision :shell, :inline => "rm latest.tar.gz"
  # config.vm.provision :shell, :inline => "cp /vagrant/wp-config-sample.php /vagrant/wp-config.php"
  # config.vm.provision :shell, :inline => "sed -i 's/database_name_here/wordpress/g' /vagrant/wp-config.php"
  # config.vm.provision :shell, :inline => "sed -i 's/username_here/root/g' /vagrant/wp-config.php"
  # config.vm.provision :shell, :inline => "sed -i 's/password_here/vagrant/g' /vagrant/wp-config.php"

  #### ruby
  # config.vm.provision :shell, :inline => "curl -L https://get.rvm.io | bash -s stable"
  # config.vm.provision :shell, :inline => "sudo usermod -a vagrant -G rvm"
  # config.vm.provision :shell, :inline => "rvm requirements"
  # config.vm.provision :shell, :inline => "rvm install 1.9.3-p286"

end
