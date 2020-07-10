#!/bin/bash

# Download grafana
wget https://dl.grafana.com/oss/release/grafana-7.0.6.linux-amd64.tar.gz

# Install grafana
sudo apt-get install -y adduser libfontconfig
tar -zxvf grafana-7.0.6.linux-amd64.tar.gz

# systemd
sudo systemctl daemon-reload
sudo systemctl enable grafana-server
sudo systemctl start grafana-server

# Installation cleanup
rm grafana-7.0.6.linux-amd64.tar.gz
