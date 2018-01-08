echo "Copying Dotfiles..."
cd ~/.dotfiles

cp .bashrc ~/.bashrc
cp .xinitrc ~/.xinitrc
cp config ~/.config/i3/config

sudo cp xiwi.conf /etc/crouton/xiwi.conf
sudo cp colors /usr/local/bin/colors
