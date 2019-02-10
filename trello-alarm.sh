#!/bin/bash

trello_board_url=""
music_url=""

date=$(date)

#list available mixer controls
#amixer scontrols

while [[ $date != *"06:00:"* ]]; do
	amixer sset 'PCM' 85%

	echo "waiting"
	echo $date
	echo "-------------------"

	sleep 10
	date=$(date)
	
done

echo "DONE"
pkill chromium

amixer sset 'PCM' 100%
chromium-browser $trello_board_url & chromium-browser --incognito $music_url
