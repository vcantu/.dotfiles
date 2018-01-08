#!/bin/bash

# Install packages
echo "Installing Packages...."
sudo apt-get install software-properties-common python-software-properties libbsd-dev libfuse2 pkg-config -y
sudo apt-get install build-essential libfuse-dev libsqlite3-dev -y
sudo apt-get install vim curl -y
sudo apt-get install cpufrequtils ssh libpq-dev -y
sudo apt-get install openjdk-8-jdk -y

echo "exec i3" > ~/.xinitrc

echo "Installing Heroku..."
sudo add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./"
curl -L https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -
sudo apt-get update -y
sudo apt-get install heroku -y

echo "Updating git credentials"
git config --global user.email "viviano.cantu@gmail.com"
git config --global user.name "Viviano Cantu"

echo " ------- Install Complete ------"
echo "Remember to uncomment en_US.UTF-8 UTF-8 in /etc/locale.gen"
echo " then run sudo locale-gen"
. ~/.bashrc
