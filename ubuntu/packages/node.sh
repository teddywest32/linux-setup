info " -> Installing Node Aptitude Packages"

packagelist=(

# TOOLS
# ------------------------

nodejs
npm
)
sudo apt-get install ${packagelist[@]}


info " -> Mapping nodejs to node"

sudo ln -sf /usr/bin/nodejs /usr/bin/node


info " -> Installing Node Packages"

packagelist=(

# TOOLS
# ------------------------

gulp
bower
)
sudo npm -g install ${packagelist[@]}
