# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# python
export PATH="/usr/local/opt/python@3.8/bin:$PATH"
# alias pip=/usr/local/bin/pip3
# alias python=/usr/local/bin/python3.7
alias pip=/usr/local/opt/python@3.8/bin/pip3
alias python=/usr/local/opt/python@3.8/bin/python3
# export VIRTUALENVWRAPPER_PYTHON=$(which python3)

# for sml
export PATH="$PATH:/usr/local/smlnj/bin"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="muse"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=6

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git python osx docker dnf)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
eval $(thefuck --alias)

alias doc='cd ~/Documents'
alias dow='cd ~/Downloads'
alias dev='cd ~/Developer'
alias dot='cd ~/Developer/dotfiles'

case `uname` in
	Darwin)
		alias doc='cd ~/Google\ Drive/Documents'
		alias job='cd ~/Google\ Drive/Documents/Job'
		alias book='cd ~/Google\ Drive/Documents/Books'
		alias ci='cd ~/Google\ Drive/Documents/Job/CodeInterview'
		alias note='cd ~/Google\ Drive/Documents/Job/CodeInterview/Notes'
		alias lai='cd ~/Google\ Drive/Documents/Job/CodeInterview/Laioffer'
		alias lt='cd ~/Google\ Drive/Documents/Job/CodeInterview/Leetcode'
		alias resume='cd ~/Google\ Drive/Documents/Job/resume'

	;;
	Linux)
		# On unix based systems, this enables copy and paste using system clipboard
		alias vim='vimx'
		alias vi='vimx'
	;;
esac

export TLDR_COLOR_BLANK="yellow"
export TLDR_COLOR_NAME="red"
export TLDR_COLOR_DESCRIPTION="green"
export TLDR_COLOR_EXAMPLE="blue"
export TLDR_COLOR_COMMAND="white"
export TLDR_COLOR_PARAMETER="red"

