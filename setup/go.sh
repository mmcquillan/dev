#!/bin/bash

wget -q -O /tmp/go1.5.3.linux-amd64.tar.gz https://storage.googleapis.com/golang/go1.5.3.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf /tmp/go1.5.3.linux-amd64.tar.gz
sudo sh -c 'echo "export PATH=\$PATH:/usr/local/go/bin" >> /etc/profile'
mkdir ~/go
printf 'export GOPATH=$HOME/go\nexport GOBIN=$GOPATH/bin\nexport PATH=$PATH:$GOBIN' > ~/.profile
