#!/bin/bash

# Ubuntu 16.04

# Prometheus installation. It's a lousy script though.

# Example:
# chmod +x full_installation.sh
# sudo pwd
# ./full_installation.sh

./Grafana/prometheus.sh
./Grafana/node.sh
./Grafana/blackbox.sh
./Grafana/alertmanager.sh
./Grafana/grafana.sh

echo "Installation complete."
echo "Visit port 3000 to view grafana dashboards."
