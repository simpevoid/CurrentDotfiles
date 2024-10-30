# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

export TERMINAL="st"
export BROWSER="firefox"


doas loadkeys /home/void/.config/loadkeys/loadkeysrc 

[[ ! $DISPLAY && $(tty) = "/dev/tty1" ]] && startx
