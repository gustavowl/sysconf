#!/bin/bash
CURR_KBMAP=$(setxkbmap -query | grep layout)
if [[ $CURR_KBMAP == *"br" ]]; then
	setxkbmap us
else
	setxkbmap br
fi
