#!/bin/bash

wget https://dl.influxdata.com/telegraf/releases/telegraf-1.14.4-1.x86_64.rpm
sudo yum localinstall telegraf-1.14.4-1.x86_64.rpm
sudo mkdir -p /etc/telegraf
sudo cp telegraf_centower.conf /etc/telegraf/telegraf.conf
sudo systemctl start telegraf
