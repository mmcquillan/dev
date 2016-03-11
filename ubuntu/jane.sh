#!/bin/bash

### Install Go ###
wget -q -O /tmp/go1.5.3.linux-amd64.tar.gz https://storage.googleapis.com/golang/go1.5.3.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf /tmp/go1.5.3.linux-amd64.tar.gz
sudo sh -c 'echo "export PATH=\$PATH:/usr/local/go/bin" >> /etc/profile'

### Install Jane ###
mkdir $HOME/go
sudo apt-get install -y git
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
go get github.com/projectjane/jane
go install $GOPATH/src/github.com/projectjane/jane/jane.go
sudo cp $GOPATH/bin/jane /usr/local/bin/jane
sudo cp ./etc/jane.json /etc/jane.json
sudo cp $GOPATH/src/github.com/projectjane/jane/startup/upstart/jane.conf /etc/init/jane.conf
