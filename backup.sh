#!/bin/bash
cd ~/.dotfiles

echo "Backing up .bashrc..."
cp ~/.bashrc .

echo "Backing up .tmux.conf..."
cp ~/.tmux.conf .

echo "Backing up .xinitrc"
cp ~/.xinitrc .

echo "Backing up .config/i3/config"
cp ~/.config/i3/config .

echo "Backing up /etc/crouton/xiwi.conf"
cp /etc/crouton/xiwi.conf .


echo "Saving to GitHub..."
dt=$(date '+%d/%m/%Y %H:%M:%S');
git add .
git commit -m "autobackup $dt"
git push origin master
