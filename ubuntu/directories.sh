#!/bin/bash

ask_question " <- Would you like to setup Code folder [y|n] "
echo

if said_yes ; then
    NAME=`whoami`
    COMMAND="ln -sf /media/$NAME/Data/Code /home/$NAME/Code"
    $COMMAND
fi


ask_question " <- Would you like to setup Applications folder [y|n] "
echo

if said_yes ; then
    NAME=`whoami`
    COMMAND="ln -sf /media/$NAME/Data/Applications /home/$NAME/Applications"
    $COMMAND
fi


ask_question " <- Would you like to setup Password Store folder [y|n] "
echo

if said_yes ; then
    NAME=`whoami`
    COMMAND="ln -sf /media/$NAME/Data/PassStore /home/$NAME/.password-store"
    $COMMAND
fi
