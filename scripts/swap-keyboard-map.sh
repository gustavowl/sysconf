#!/bin/bash
#move this file to ~/.scripts/ (create directory if necessary)
#this file is called by xbindkeys

INDEX=$(expr index "$(setxkbmap -query | grep layout)" br)
if [ $INDEX -gt 0 ]; then
	setxkbmap us
else
	setxkbmap br
fi
