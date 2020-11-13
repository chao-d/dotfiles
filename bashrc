# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions
export PATH=/usr/local/bin:$PATH

# for SML
export PATH="$PATH:/usr/local/smlnj/bin"

# alias rnm='sudo service NetworkManager restart'
alias doc='cd ~/Documents'
alias dow='cd ~/Downloads'
alias dev='cd ~/Developer'
alias book='cd ~/Documents/Books'
alias dot='cd ~/Developer/dotfiles'
alias ci='cd ~/Documents/Job/CodeInterview'

export TLDR_COLOR_BLANK="yellow"
export TLDR_COLOR_NAME="red"
export TLDR_COLOR_DESCRIPTION="green"
export TLDR_COLOR_EXAMPLE="blue"
export TLDR_COLOR_COMMAND="white"
export TLDR_COLOR_PARAMETER="red"
