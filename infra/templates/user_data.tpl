#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

apt update

apt -y install \
    net-tools \
    mysql-server \
    python3-pip \
    python3-venv \
    pkg-config \
    default-libmysqlclient-dev \
    nginx

sudo chown -R ubuntu /var/www/html
sudo chown -R ubuntu /home/ubuntu/myapp/

mkdir /home/ubuntu/myapp
cd /home/ubuntu/myapp
python3 -m venv .
source ./bin/activate
pip install \
    flask \
    flask-mysqldb \
    flask-cors