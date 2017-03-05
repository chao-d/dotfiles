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

# For a ipython notebook and pyspark integration
if which pyspark > /dev/null; then
    export SPARK_HOME="/usr/local/Cellar/apache-spark/2.1.0/libexec/"
    export PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/python/build:$PYTHONPATH
    export PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.10.4-src.zip:$PYTHONPATH
fi

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
alias ci='cd ~/Documents/Job/CodeInterview'
alias note='cd ~/Documents/Job/CodeInterview/Notes'

export TLDR_COLOR_BLANK="yellow"
export TLDR_COLOR_NAME="red"
export TLDR_COLOR_DESCRIPTION="green"
export TLDR_COLOR_EXAMPLE="blue"
export TLDR_COLOR_COMMAND="white"
export TLDR_COLOR_PARAMETER="red"
