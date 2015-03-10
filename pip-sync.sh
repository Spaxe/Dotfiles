#!/bin/bash

# Sync pip packages via Dropbox
#

PIP="pip"

# first get local settings
echo "Reading local settings ..."
rm -f /tmp/pip-sync.txt
$PIP freeze > /tmp/pip-sync.txt

# then combine it with list in Dropbox
echo "Reading settings from Dropbox ..."
[ -e ~/Dropbox/Apps/Pip/pip-sync.txt ] && cat ~/Dropbox/Apps/Pip/pip-sync.txt >> /tmp/pip-sync.txt

# make the lists unique and sync into Dropbox
echo "Syncing to Dropbox ..."
mkdir -p ~/Dropbox/Apps/Pip
cat /tmp/pip-sync.txt | sort | uniq > ~/Dropbox/Apps/Pip/pip-sync.txt

# Install missing Homebrew packages
echo "Install missing packages ..."
$PIP install --allow-external -r ~/Dropbox/Apps/Pip/pip-sync.txt
