#BEGIN REMOVE
# This file should be moved to
# ~/.bashrc
# Remind that the default foreground colour is
# #DAD822
#END REMOVE
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\e[0;32m[\u@\h \W]\$ \e[m' #dark green
#PS1='\e[0;92m[\u@\h \W]\$ \e[m' #light green
#PS1='\e[1;32m[\u@\h \W]\$ \e[m' #bold green

# >>> Added by cnchi installer
BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/vim
