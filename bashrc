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

# alias vim='vimx'
# alias vi='vimx'

# alias rnm='sudo service NetworkManager restart'
alias doc='cd ~/Documents'
alias dow='cd ~/Downloads'
alias repo='cd ~/repos'
alias book='cd ~/Documents/Books'
alias dot='cd ~/repos/dotfiles'

alias job='cd ~/Documents/Job'
alias nine='cd ~/Documents/Job/CodeInterview/NineChapter'

export TLDR_COLOR_BLANK="blue"
export TLDR_COLOR_NAME="cyan"
export TLDR_COLOR_DESCRIPTION="blue"
export TLDR_COLOR_EXAMPLE="red"
export TLDR_COLOR_COMMAND="blue"

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
