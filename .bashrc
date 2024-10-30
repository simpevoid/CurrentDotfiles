# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#export TERM=xterm-256color

alias ls='ls --color=auto'
alias ll='ls -lh'
alias grep='grep --color=auto'
alias sp='aspell -t -c'
# xbps
alias i='doas xbps-install -S'
alias u='i; doas xbps-install -u xbps; doas xbps-install -u'
alias q='doas xbps-query -Rs'
alias r='doas xbps-remove -R'

#apps
alias vi='nvim'
alias v='vim-x11'

export PS1='\[\e[1;36m\]\W\[\e[0m\] \[\e[1;31m\]>\[\e[0m\] '
set -o vi 
eval "$(zoxide init --cmd cd bash)"
export PATH=/usr/lib/jvm/openjdk21/bin:$PATH


export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
  --color=fg:-1,fg+:#ffffff,bg:-1,bg+:#262626
  --color=hl:#5f87af,hl+:#5fd7ff,info:#afaf87,marker:#ffffff
  --color=prompt:#faf7f8,spinner:#ffffff,pointer:#ceb9e3,header:#87afaf
  --color=border:#262626,label:#aeaeae,query:#d9d9d9
  --preview-window="border-rounded" --prompt="> " --marker=">" --pointer="◆"
  --separator="─" --scrollbar="│" --layout="reverse" --info="right"'
