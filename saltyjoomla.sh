#!/bin/bash

# Made by Tuomas Olkinuora 2018 - GPL v3
# A simple script to get everything up and running.

echo "Updating package repo"

sudo apt-get update

echo "Installing salt-minion"

sudo apt-get -y install salt-minion

echo "Creating /srv/salt if by chance one doesn't yet exist"

sudo mkdir /srv/salt

echo "Running state.highstate, hopefully.."

sudo salt-call --local state.highstate --file-root .

