echo " -> Installing Node Packages"
echo
packagelist=(

# TOOLS
# ------------------------

nodejs
npm
)
sudo apt-get install ${packagelist[@]}
echo