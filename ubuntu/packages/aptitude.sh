#!/bin/bash

ask_question " <- Do you want to update the Repositories? [y|n] "

if said_yes ; then
    sudo sudo apt-get update
fi


headline " -> Installing Aptitude Packages"

packagelist=(

# TOOLS
# ------------------------

stow
curl
ctags
htop
unrar
glances
qtpass
bash-builtins
bash-completion
scrot
screenfetch
neofetch
ack-grep
spotify-client
virtualbox
gnome-keyring
trimage


# FTP Clients
# ------------------------

filezilla
kftpgrabber


# LIBRARIES
# ------------------------

libgcrypt20-dev
libnotify-bin


# PACKAGE MANAGERS
# ------------------------

composer


# BROWSERS
# ------------------------

firefox
firefox-trunk
chromium-browser


# EDITORS
# ------------------------

vim
vim-gtk
atom
sublime-text-installer


# GRAPHICAL
# ------------------------

kcolorchooser
karbon
kolourpaint4
krita
kazam


# LAMP
# ------------------------

apache2

mysql-server
mysql-client

php-gettext

php7.0-cgi
php7.0-curl
php7.0-gd
php7.0-json
php7.0-mbstring
php7.0-mcrypt
php7.0-mysql
php7.0-soap
php7.0-sqlite3
php7.0-xml
php7.0-zip
php7.0
libapache2-mod-php7.0

php5.6-cgi
php5.6-curl
php5.6-gd
php5.6-json
php5.6-mbstring
php5.6-mcrypt
php5.6-mysql
php5.6-soap
php5.6-sqlite3
php5.6-xml
php5.6-zip
php5.6
libapache2-mod-php5.6

phpmyadmin

)

sudo apt-get install ${packagelist[@]}
