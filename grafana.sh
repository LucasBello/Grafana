#!/bin/bash

# Download grafana
wget https://dl.grafana.com/oss/release/grafana_7.0.6_amd64.deb

# Install grafana
sudo apt-get install -y adduser libfontconfig
sudo dpkg -i grafana_7.0.6_amd64.deb

# systemd
sudo systemctl daemon-reload
sudo systemctl enable grafana-server
sudo systemctl start grafana-server

# Installation cleanup
rm grafana-7.0.6.linux-amd64.tar.gz
