echo " -> Installing Node Aptitude Packages"
echo
packagelist=(

# TOOLS
# ------------------------

nodejs
npm
)
sudo apt-get install ${packagelist[@]}
echo


echo " -> Mapping nodejs to node"
echo
sudo ln -sf /usr/bin/nodejs /usr/bin/node
echo


echo " -> Installing Node Packages"
echo
packagelist=(

# TOOLS
# ------------------------

gulp
bower
)
sudo npm -g install ${packagelist[@]}
echo