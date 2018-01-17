#!/bin/bash

# Install packages
echo "Installing Packages...."
sudo apt-get install software-properties-common python-software-properties libbsd-dev libfuse2 pkg-config -y
sudo apt-get install build-essential libfuse-dev libsqlite3-dev -y
sudo apt-get install vim curl -y
sudo apt-get install cpufrequtils ssh libpq-dev -y
sudo apt-get install openjdk-8-jdk -y
sudo apt-get install nodejs npm

echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
sudo locale-gen

echo "exec i3" > ~/.xinitrc

echo "Updating git credentials"
git config --global user.email "viviano.cantu@gmail.com"
git config --global user.name "Viviano Cantu"

. ~/.bashrc
