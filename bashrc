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
alias dot='cd ~/Developer/dotfiles'

export TLDR_COLOR_BLANK="yellow"
export TLDR_COLOR_NAME="red"
export TLDR_COLOR_DESCRIPTION="green"
export TLDR_COLOR_EXAMPLE="blue"
export TLDR_COLOR_COMMAND="white"
export TLDR_COLOR_PARAMETER="red"

# >>> coursier install directory >>>
export PATH="$PATH:/Users/chao/Library/Application Support/Coursier/bin"
# <<< coursier install directory <<<

# >>> JVM installed by coursier >>>
export JAVA_HOME="/Users/chao/Library/Caches/Coursier/arc/https/github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11%252B28/OpenJDK11-jdk_x64_mac_hotspot_11_28.tar.gz/jdk-11+28/Contents/Home"
# <<< JVM installed by coursier <<<
