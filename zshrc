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
plugins=(git git-flow git-extras svn mvn sublime kubectl)

source $ZSH/oh-my-zsh.sh

# User configuration

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
# source /home/jan/.gvm/scripts/gvm

# Shortcuts
alias pp='cd ~/projects'

# Tools
alias squirrel='nohup ~/tools/squirrel/squirrel-sql.sh >/dev/null 2>&1 &'
alias soap='nohup ~/tools/soapUI-5.0.0/bin/soapui.sh >/dev/null 2>&1 &'
alias idea='nohup ~/tools/idea-IU/bin/idea.sh >/dev/null 2>&1 &'
alias yed='nohup java -jar ~/tools/yed-3.12/yed.jar >/dev/null 2>&1 &'i
alias baralga='nohup java -Duser.country=DE -Duser.language=de -Duser.timezone=Europe/Berlin -jar ~/synced/tools/Baralga-1.8.0/Baralga-1.8.0.jar >/dev/null 2>&1 &'
alias jbs='startJBoss'

alias startSZ1='~/projects/hmrv_obs/test-sz1/build/jboss_with_deployments/eap_unpacked/hm-eap/bin/standalone.sh -Djboss.socket.binding.port-offset=10000 --debug 38989'
alias startSZ3='~/projects/hmrv_obs/test-sz3/build/jboss_with_deployments/eap_unpacked/hm-eap/bin/standalone.sh --debug 28989'

alias mci='mvn -T 1C clean install'

alias deployRps='cp ~/projects/hmrv_obs/rps/ear/target/rps-ear*.ear ~/projects/hmrv_obs/test-sz1/build/jboss_with_deployments/eap_unpacked/hm-eap/standalone/deployments/'
alias deployRvm='cp ~/projects/hmrv_obs/rvm/ear/target/rvm-ear*.ear ~/projects/hmrv_obs/test-sz3/build/jboss_with_deployments/eap_unpacked/hm-eap/standalone/deployments/'
alias deployRbs='cp ~/projects/hmrv_obs/rbs/ear/target/rbs-ear*.ear ~/projects/hmrv_obs/test-sz1/build/jboss_with_deployments/eap_unpacked/hm-eap/standalone/deployments/'
alias deployRda='cp ~/projects/hmrv_obs/rda/ear/target/rda-ear*.ear ~/projects/hmrv_obs/test-sz3/build/jboss_with_deployments/eap_unpacked/hm-eap/standalone/deployments/'
alias deployRzs='cp ~/projects/hmrv_obs/rzs/ear/target/rzs-ear*.ear ~/projects/hmrv_obs/test-sz1/build/jboss_with_deployments/eap_unpacked/hm-eap/standalone/deployments/'
alias deployRva='cp ~/projects/hmrv_obs/rva/ear/target/rva-ear*.ear ~/projects/hmrv_obs/test-sz1/build/jboss_with_deployments/eap_unpacked/hm-eap/standalone/deployments/'
alias deployRvw='cp ~/projects/hmrv_obs/rvw/ear/target/rvw-ear*.ear ~/projects/hmrv_obs/test-sz3/build/jboss_with_deployments/eap_unpacked/hm-eap/standalone/deployments/'

alias deploySsk='cp ~/projects/vertical-sollstellung/ear/target/vertical-sollstellung*.ear ~/tools/jboss-eap-6/standalone/deployments/vertical-sollstellung-ear.ear'

alias baseLogin='ssh red6@base'
alias cleanKernels="dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | xargs sudo apt-get -y purge"

alias ffs='rm -rf node_modules/ && npm cache clean && npm i'

# Read .nvmrc
function chpwd() {
  emulate -L zsh
  if [[ -f .nvmrc ]] then
    nvm use
  fi
}
source ~/.nvmrc_zsh
eval "$(direnv hook zsh)"

# added by travis gem
[ -f /home/jan/.travis/travis.sh ] && source /home/jan/.travis/travis.sh

# Go development
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"
