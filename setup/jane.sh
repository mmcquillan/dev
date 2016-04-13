#!/bin/bash

echo "Setting paths"
export PATH=$PATH:/usr/local/go/bin
export GOPATH=/tmp/go
export GOBIN=$GOPATH/bin

echo "Getting latest Jane"
go get github.com/projectjane/jane

echo "Building latest Jane"
go install $GOPATH/src/github.com/projectjane/jane/jane.go

echo "Stopping Jane"
sudo service jane stop

echo "Copying binaries"
sudo cp $GOPATH/bin/jane /usr/local/bin/jane

echo "Updating upstart script"
sudo cp $GOPATH/src/github.com/projectjane/jane/startup/upstart/jane.conf /etc/init/jane.conf

echo "Starting Jane"
sudo service jane start

echo "Cleaning up"
rm -rf /tmp/go
