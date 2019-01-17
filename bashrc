#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='\e[0;32m[\u@\h \W]\$ \e[m' #dark green
PS1='\[\033[00;32m\][\u@\h \W]\$ \[\e[m\]' #dark green
#PS1='\e[0;92m[\u@\h \W]\$ \e[m' #light green
#PS1='\e[1;32m[\u@\h \W]\$ \e[m' #bold green

#disable touchscreen
xinput --disable "Atmel" #this should be at xinitrc, but it only works in .bashrc

#configure touchpad
xinput --set-prop "ETPS/2 Elantech Touchpad" "libinput Tapping Enabled" 1

# >>> Added by cnchi installer
BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/vim
