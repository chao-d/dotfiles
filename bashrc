# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export PATH=/usr/local/bin:$PATH
eval $(thefuck --alias fuck)

alias vim=vimx
alias vi=vimx

alias rnm='sudo service NetworkManager restart'
alias doc='cd ~/Documents'
alias repo='cd ~/repo'
alias sshbu='ssh chaoduan@csa3.bu.edu'
alias job='cd ~/Documents/Job'
alias leetcode='cd ~/Documents/Job/CodeInterview/Leetcode'
alias book='cd ~/Documents/Books'
alias bu='cd ~/Documents/BU'
alias ws='cd ~/Documents/misc./Workspace'
alias epi='cd /home/chao/Dropbox/Documents/Job/CodeInterview/EPI'
alias episol='cd /home/chao/Dropbox/Documents/Job/CodeInterview/EPI/sol/java/src/main/java/com/epi'
alias dot='cd ~/Dropbox/Documents/dotfiles'
alias 552='cd ~/Documents/BU/cs552'
alias 591='cd ~/Documents/BU/cs591'

export TLDR_COLOR_BLANK="blue"
export TLDR_COLOR_NAME="cyan"
export TLDR_COLOR_DESCRIPTION="blue"
export TLDR_COLOR_EXAMPLE="red"
export TLDR_COLOR_COMMAND="blue"

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
