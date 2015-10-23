#!/usr/bin/env bash

# Basic updates
sudo apt-get update; sudo apt-get upgrade -y
sudo apt-get install gcc -y

# Check if Umbrella package is downloaded & install
if [ -f "api-umbrella_0.8.0-1_amd64.deb" ]
then
	echo "api-umbrella_0.8.0-1_amd64.deb already downloaded. Installing.."
  sudo dpkg -i api-umbrella_0.8.0-1_amd64.deb
else
	echo "api-umbrella_0.8.0-1_amd64.deb not found. Downloading.."
  wget https://developer.nrel.gov/downloads/api-umbrella/ubuntu/14.04/api-umbrella_0.8.0-1_amd64.deb
  sudo dpkg -i api-umbrella_0.8.0-1_amd64.deb
fi

# Backup original settings file & copy settings from synced folder.
sudo mv /etc/api-umbrella/api-umbrella.yml /etc/api-umbrella/api-umbrella_orig.yml
sudo cp /home/vagrant/umbrella/api-umbrella.yml /etc/api-umbrella/api-umbrella.yml
