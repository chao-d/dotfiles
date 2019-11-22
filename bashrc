# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

export PS1="\W $ "

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export PATH=/usr/local/bin:$PATH

# for SML
export PATH="$PATH:/usr/local/smlnj/bin"

# alias vim='vimx'
# alias vi='vimx'

# alias rnm='sudo service NetworkManager restart'
alias doc='cd ~/Documents'
alias dow='cd ~/Downloads'
alias repo='cd ~/repos'
alias book='cd ~/Documents/Books'
alias dot='cd ~/repos/dotfiles'
alias ci='cd ~/Documents/Job/CodeInterview'
alias note='cd ~/Documents/Job/CodeInterview/Notes'

export TLDR_COLOR_BLANK="yellow"
export TLDR_COLOR_NAME="red"
export TLDR_COLOR_DESCRIPTION="green"
export TLDR_COLOR_EXAMPLE="blue"
export TLDR_COLOR_COMMAND="white"
export TLDR_COLOR_PARAMETER="red"
