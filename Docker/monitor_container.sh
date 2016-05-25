#!/bin/sh
apt-get update
apt-get install -y git vim ntp python python-pip python-dev build-essential
service ntp start
dpkg-reconfigure tzdata
crontab -e
# http://crontab.guru/
pip install --upgrade pip
pip install --upgrade virtualenv
# cd /home/digital-ocean-backup-snapshots; python snapshots.py
sudo pip install digitalocean-python
