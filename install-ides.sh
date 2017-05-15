#!/bin/bash
WEBSTORM="WebStorm-2017.1.2.tar.gz"
IDEA="ideaIU-2017.1.2.tar.gz"
ANDROID="android-studio-ide-162.3934792-linux.zip"

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

echo "Done!"
