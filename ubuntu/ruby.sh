#!/bin/bash

sudo apt-get install -y vim curl wget git build-essential
curl -L https://get.rvm.io | bash -s stable
sudo usermod -a vagrant -G rvm
rvm requirements
rvm install 1.9.3-p286

