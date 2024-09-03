#!/bin/bash
XKEYMAP=$(setxkbmap -query | grep layout | sed 's/layout:     //')
#echo $XKEYMAP

if [ $XKEYMAP == "us" ]; then
	setxkbmap -variant mnemonic ru
	notify-send "Keyboard map set to 'Russian - Mnemonic'."
elif [ $XKEYMAP == "ru" ]; then
	setxkbmap hr
	notify-send "Keyboard map set to 'Croatian - Standard'."
else
	setxkbmap us
	notify-send "Keyboard map set to 'English - United States'."
fi
