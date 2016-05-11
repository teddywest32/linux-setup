#!/bin/bash

read -p " <- Have you installed Dropbox and would you like to setup Code folder [y|n] " -r
echo

if [[ $REPLY =~ ^[Yy]$ ]] ; then
	NAME=`whoami`
    COMMAND="ln -sf /media/$NAME/Data/Code /home/$NAME/Code"
    $COMMAND
fi