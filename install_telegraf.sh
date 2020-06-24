#!/bin/bash

sudo systemctl disable exporter_node.service
sudo systemctl disable exporter_merge.service
sudo systemctl disable exporter_process.service
sudo systemctl stop exporter_node.service
sudo systemctl stop exporter_merge.service
sudo systemctl stop exporter_process.service
wget https://dl.influxdata.com/telegraf/releases/telegraf-1.14.4-1.x86_64.rpm
sudo yum -y localinstall telegraf-1.14.4-1.x86_64.rpm
sudo mkdir -p /etc/telegraf
sudo cp telegraf_centower.conf /etc/telegraf/telegraf.conf
sudo systemctl start telegraf
