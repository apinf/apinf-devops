#!/usr/bin/env bash

# Basic updates
sudo apt-get update; sudo apt-get upgrade -y

# Install API Umbrella
wget https://developer.nrel.gov/downloads/api-umbrella/ubuntu/14.04/api-umbrella_0.8.0-1_amd64.deb
sudo apt-get install gcc
sudo dpkg -i api-umbrella_0.8.0-1_amd64.deb

# Install Meteor platform
curl https://install.meteor.com/ | sh
