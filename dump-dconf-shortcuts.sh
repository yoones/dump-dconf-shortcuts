#!/bin/bash

function dump_regular()
{
    dconf list $1 |
	while read line; do
	    if [ "$line" != "" ]; then
		echo dconf write $1$line \"`dconf read $1$line`\"
	    fi
	done
    echo ""
}


function dump_custom()
{
    dconf list $1 |
	while read line; do
	    if [ "$line" != "" ]; then
		echo dconf write "$1$line"binding \"`dconf read "$1$line"binding`\"
		echo dconf write "$1$line"command \"`dconf read "$1$line"command`\"
		echo dconf write "$1$line"name \"`dconf read "$1$line"name`\"
	    fi
	done
    echo ""
}

dump_regular /org/gnome/desktop/wm/keybindings/
dump_custom /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/
