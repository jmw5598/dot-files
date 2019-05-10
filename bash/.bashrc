#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '
export PS1="[\W]:[\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)]\$ "
export PATH="$PATH:/home/jason/.dotnet/tools"
export PATH="$PATH:/root/.dotnet/tools"
export DOTNET_ROOT="/opt/dotnet"
