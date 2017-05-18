#!/bin/bash
WEBSTORM="WebStorm-2017.1.3.tar.gz"
IDEA="ideaIU-2017.1.3.tar.gz"
ANDROID="android-studio-ide-162.3934792-linux.zip"

echo " - $WEBSTORM"
echo " - $IDEA"
echo " - $ANDROID"
read -p "Do you have these files in your ~/Downloads foler?(y/n)" -n 1 -r
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    echo "Install the files from these links then try again: "
    echo "WebStorm:        https://www.jetbrains.com/webstorm/download/#section=linux"
    echo "IntelliJ:        https://www.jetbrains.com/idea/download/"
    echo "Android Studio:  https://developer.android.com/studio/index.html"
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # exits
fi

cd ~/Downloads

echo "Copying WebStorm Tar..."
sudo cp $WEBSTORM /opt/
echo "Copying Idea Tar..."
sudo cp $IDEA /opt/
echo "Copying Android Studio Zip..."
sudo cp $ANDROID /opt/

cd /opt

echo "Extracting WebStorm Tar..."
sudo tar -xzf $WEBSTORM
echo "Extracting Idea Tar..."
sudo tar -xzf $IDEA
echo "Extracting Android Studio Zip"
sudo unzip $ANDROID

echo "Removing WebStorm Tar..."
sudo rm $WEBSTORM
echo "Removing Idea Tar..."
sudo rm $IDEA
echo "Removing Android Studio zip..."
sudo rm $ANDROID

echo "Remember to call \"sudo chown -R $USER:$USER /opt/FOLDER\" for every IDE"
echo "   This will allow it to update itself"

echo "Done!"
