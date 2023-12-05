#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='eza --color=auto'
alias cat='bat'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export CHATTERINO2_RECENT_MESSAGES_URL=https://recent-messages.zneix.eu/api/v2/recent-messages/%1

. /opt/asdf-vm/asdf.sh

export PATH=$PATH:/home/tks/.local/share/ivm/bin

alias dots='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

export GPG_TTY=$(tty)
