#!/bin/bash
echo "Inside the root.sh script";

# install Visual Studeio Code on Ubunut and Debian based distros

wget https://go.microsoft.com/fwlink/?LinkID=760868
cp index.html/?LinkID=760868 code.deb
rm index.html/?LinkID=760868 -f
sudo apt install code.deb

# setup 'Snippet Daemon' for Visual Studio Code

exit 0;
