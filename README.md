# .files
You probably don't care about my actual dotfiles, but you can use the installation and backup scripts as a reference when creating your own dotfiles.

### To Install...
```
sudo apt-get install nautilus-dropbox
drobox start -i
.dropbox-dist/dropboxd
```

Then run any or all of the installation scripts:
```
sudo sh install.sh
sudo sh isntall-ides.sh
sudo sh install-apps.sh
```

## install.sh
This script copies all of the dotfiles into their locations and installs various packages which I use commonly.

Customize this with your own files and packages

## backup.sh
This will copy the files from their places on your system into the current folder and then push to github.
Make sure that you have the right remote set this will push to 'origin/master'

## install-apps.sh
This will install optional apps other than the base packages in install.sh

## install-ides.sh
I commonly use [Android Studio](http://developer.android.com/studio/index.html) and IntelliJ's [WebStorm](http://www.jetbrains.com/webstorm/download/#section=linux) and [IDEA](http://www.jetbrains.com/idea/download/).

(For now) the installation script requires that you download the tars from the links and place them in your ~/Downloads folder.

Also also make sure the names of the variables at the top of the script match the names of the files you downloaded


## crosh
Contains some commands to customize the ChromeOS Shell (crosh) and some preferences for the [Secure Shell App](https://chrome.google.com/webstore/detail/secure-shell/pnhechapfaindjhompbnflcldabbghjo?hl=en)
