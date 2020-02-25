#!/bin/bash
echo "Inside the root.sh script";

# install Visual Studeio Code on Ubunut and Debian based distros

echo "Installing Visual Studio Code";

wget https://go.microsoft.com/fwlink/?LinkID=760868
cp index.html\?LinkID=760868 code.deb
rm index.html\?LinkID=760868 -f
sudo apt install ./code.deb

# Check if package git is installed

echo "Installing Git";
sudo apt-get install git

# setup 'Snippet Daemon' for Visual Studio Code

mkdir ~/.config/Code
mkdir ~/.config/Code/User
# sudo ./script.sh makes %USER => root 
# chown -hR $USER ~/.config/Code
chmod 777 -R ~/.config/Code
cd ~/.config/Code/User
sudo -u $USER git clone https://github.com/rahondev/vsc_snippets.git

sudo -u $USER mv vsc_snippets snippets
rm vsc_snippets -rf
cd snippets
sudo ./watch.sh

exit 0;
