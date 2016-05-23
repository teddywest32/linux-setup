#!/bin/bash

ask_question " <- Have you installed Dropbox and would you like to setup Code folder [y|n] "
echo

if said_yes ; then
    NAME=`whoami`
    COMMAND="ln -sf /media/$NAME/Data/Code /home/$NAME/Code"
    $COMMAND
fi
