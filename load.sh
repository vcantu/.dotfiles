#!/bin/bash
echo "Copying Dotfiles..."
cd ~/Dropbox/dotfiles

echo "Pulling from Git..."
git pull origin master

cp .bashrc ~/.bashrc
cp .xinitrc ~/.xinitrc
cp config ~/.config/i3/config
cp .tmux.conf ~/.tmux.conf
tmux source-file ~/.tmux.conf

sudo cp xiwi.conf /etc/crouton/xiwi.conf
sudo cp sshstart /usr/local/bin/sshstart
sudo cp colors /usr/local/bin/colors
sudo cp gsync /usr/local/bin/gsync
