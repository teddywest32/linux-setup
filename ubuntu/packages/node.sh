#!/bin/bash

headline " -> Installing Node Aptitude Packages"

packagelist=(

# TOOLS
# ------------------------

nodejs
npm
)
sudo apt-get install ${packagelist[@]}


headline " -> Mapping nodejs to node"

sudo ln -sf /usr/bin/nodejs /usr/bin/node


headline " -> Installing Node Packages"

packagelist=(

# TOOLS
# ------------------------

gulp
bower
electron-packager
)

sudo npm -g install ${packagelist[@]}
