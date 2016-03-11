#!/bin/bash

sudo apt-get install -y vim curl wget git build-essential
wget -q https://storage.googleapis.com/golang/go1.4.2.linux-386.tar.gz
sudo tar -C /usr/local -xzf go1.4.2.linux-386.tar.gz
sudo echo 'export PATH=$PATH:/usr/local/go/bin' > /etc/profile.d/go.sh

end
