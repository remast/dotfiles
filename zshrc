# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-flow svn mvn sublime)

source $ZSH/oh-my-zsh.sh

# User configuration

#export PATH="/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/node/node-v0.10.26/bin"
# export MANPATH="/usr/local/man:$MANPATH"

export PATH=~/bin:$PATH
export PATH=~/.dotfiles/bin/:$PATH

# # Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

source ~/.bashrc.d/source_bashrcdir
source ~/.bash_aliases

# Shortcuts
alias pp='cd ~/projects'

# Tools
alias squirrel='nohup ~/tools/squirrel/squirrel-sql.sh >/dev/null 2>&1 &'
alias soap='nohup ~/tools/soapUI-5.0.0/bin/soapui.sh >/dev/null 2>&1 &'
alias idea='nohup ~/tools/idea-IU/bin/idea.sh >/dev/null 2>&1 &'
alias yed='nohup java -jar ~/tools/yed-3.12/yed.jar >/dev/null 2>&1 &'
alias baralga='nohup java -Duser.country=DE -Duser.language=de -Duser.timezone=Europe/Berlin -jar tools/Baralga-1.7.7-SNAPSHOT/Baralga-1.7.7-SNAPSHOT.jar >/dev/null 2>&1 &'
alias jbs='startJBoss'

alias baseLogin='ssh red6@base'
alias cleanKernels="dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | xargs sudo apt-get -y purge"

# HanseMerkur Infrastruktur
alias proxyStop='sudo killall simpleproxy'
