#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

mkdir -p /home/ubuntu/myapp

sudo chown -R ubuntu:ubuntu /home/ubuntu/myapp/

#Docker requirements and install
sudo apt update
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
    
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt update 
sudo apt install -y docker-ce mysql-server

#Docker compose install
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
