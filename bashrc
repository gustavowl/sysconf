#copy to ~/.bashrc
#verify, beforehand, if ~/.bashrc file exists
#if it does, copy the content to the end of file

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='\e[0;32m[\u@\h \W]\$ \e[m' #dark green
PS1='\[\033[00;32m\][\u@\h \W]\$ \[\e[m\]' #dark green
#PS1='\e[0;92m[\u@\h \W]\$ \e[m' #light green
#PS1='\e[1;32m[\u@\h \W]\$ \e[m' #bold green

# >>> Added by cnchi installer
BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/vim
