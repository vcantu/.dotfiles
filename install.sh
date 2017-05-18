#!/bin/bash

# Install packages
echo "Installing Packages...."
sudo apt-get install vim software-properties-common python-software-properties libbsd-dev libfuse2 pkg-config -y
sudo apt-get install build-essential libfuse-dev libsqlite3-dev python-pip ibssl-dev vim curl tmux -y
sudo apt-get install cpufrequtils iptables ssh ruby ruby-dev libpq-dev nodejs npm -y
sudo apt-get install python3 python3-xdg -y
sudo appt-get install openjdk-8-jdk -y

echo "Installing Grive"
sudo add-apt-repository ppa:nilarimogard/webupd8 -y
sudo apt-get update -y
sudo apt-get install grive -y

echo "Installing Python Packages..."
sudo pip install --upgrade pip
sudo pip install bottle pyyaml -y

echo "Installing Ruby..."
\curl -sSL https://get.rvm.io | bash -s stable --ruby
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
echo "Installing Bundler"
gem install bundler

echo "Installing Heroku..."
sudo add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./"
curl -L https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -
sudo apt-get update -y
sudo apt-get install heroku -y

echo "Installing Mongo db..."
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update -y
sudo apt-get -y --no-install-recommends install adduser mongodb-org
sudo mkdir /data
sudo mkdir /data/db

echo "Updating git credentials"
git config --global user.email "viviano.cantu@gmail.com"
git config --global user.name "Viviano Cantu"

echo "Copying Dotfiles..."
cp .bashrc ~/.bashrc
cp .tmux.conf ~/.tmux.conf
tmux source-file ~/.tmux.conf

sudo cp sshstart /usr/local/bin/sshstart
sudo cp colors /usr/bin/colors

echo "Remember to uncomment en_US.UTF-8 UTF-8 in /etc/locale.gen"
echo " then run sudo locale-gen"
. ~/.bashrc
