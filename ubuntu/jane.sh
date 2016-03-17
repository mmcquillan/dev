#!/bin/bash

export PATH=$PATH:/usr/local/go/bin
export GOPATH=/tmp/go
export GOBIN=$GOPATH/bin
go get github.com/projectjane/jane
go install $GOPATH/src/github.com/projectjane/jane/jane.go
sudo cp $GOPATH/bin/jane /usr/local/bin/jane
sudo cp $GOPATH/src/github.com/projectjane/jane/startup/upstart/jane.conf /etc/init/jane.conf
rm -rf /tmp/go
sudo service jane restart

