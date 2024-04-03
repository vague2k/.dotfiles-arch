#!/bin/bash

# I took this script from Stephan Raabe and adjusted it to my liking
#
# Required: yay, timeshift, update-grub script
#
# I'm also using the gum library from charmbracelet cuz I like when things look pretty :)
# TODO: use pywal colors for gum

sleep 0.1
clear

_isInstalledYay() {
    package="$1";
    check="$(yay -Qs --color always "${package}" | grep "local" | grep "${package} ")";
    if [ -n "${check}" ] ; then
        echo 0; #'0' means 'true' in Bash
        return; #true
    fi;
    echo 1; #'1' means 'false' in Bash
    return; #false
}

# Confirm Start

if gum confirm "DO YOU WANT TO START THE UPDATE NOW?" ;then
    echo 
    echo ":: Update started."
elif [ $? -eq 130 ]; then
        exit 130
else
    echo
    echo ":: Update canceled."
    exit;
fi

if [[ $(_isInstalledYay "timeshift") == "0" ]] ;then
    if gum confirm "DO YOU WANT TO CREATE A SNAPSHOT?" ;then
        echo
        c=$(gum input --placeholder "Enter a comment for the snapshot...")
        sudo timeshift --create --comments "$c"
        sudo timeshift --list
        sudo update-grub
        echo ":: DONE. Snapshot $c created!"
        echo
    elif [ $? -eq 130 ]; then
        echo ":: Snapshot canceled."
        exit 130
    else
        echo ":: Snapshot canceled."
    fi
    echo
fi

yay

notify-send "Update complete"
echo 
echo ":: Update complete"
sleep 2
