#!/bin/bash

# Made by Tuomas Olkinuora 2018 - GPL v3
# A simple script to get everything up and running.

echo "Updating repo and installing git and salt"

sudo apt-get update
sudo apt-get -y install git salt-minion

echo "Creating /srv/salt if by chance one doesn't yet exist"

sudo mkdir /srv/salt

echo "Running state.highstate, hopefully.."

sudo salt-call --local state.highstate --file-root .

