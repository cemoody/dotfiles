# this adds the path fore coreutils, which includes timeout
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"

# pull .dotfiles from git
if [ -d "$HOME/.dotfiles" ]; then
    cd $HOME/.dotfiles
    timeout 3 git pull origin master -q | grep -v 'Already up-to-date'
    timeout 3 git submodule update --init --recursive
fi

export ZSH_CUSTOM=$HOME/.dotfiles/zsh_custom

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
# ZSH_THEME="solarized-powerline"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/Users/cemoody/anaconda/bin:/Users/cemoody/.rvm/gems/ruby-2.0.0-p353/bin:/Users/cemoody/.rvm/bin:/Users/cemoody/Development/topsoil/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:/Users/cemoody/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:/usr/texbin:/usr/local/sbin:/Applications/Julia-0.3.0-prerelease-fb0bd5c3d1.app/Contents/Resources/julia/bin/"
# this adds the path fore coreutils, which includes timeout
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"

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

. ~/.dotfiles/z/z.sh

alias unity25="ssh-add && ssh -Nv -L3306:localhost:3306 fia25.sjc1b.square"
alias unity26='ssh-add && ssh -Nv -L3307:localhost:3306 fia26.sjc1b.square'
alias pi='ssh pi@chrisemoody.no-ip.biz'
alias ll='ls -alh'

export EDITOR=vim
export DATABASE_HOST_HIVE='gun7.sjc1c.square'
export DATABASE_USERNAME_HIVE='cemoody'
export DATABASE_PASSWORD_HIVE='anything'
export DATABASE_PORT_HIVE=10000
export DATABASE_NAME_HIVE='wd_cemoody'
export PYTHONPATH=$PYTHONPATH:/Users/cemoody/Development/data-science
export PATH=$PATH:/Applications/Julia-0.3.0-prerelease-fb0bd5c3d1.app/Contents/Resources/julia/bin/

# iia6 mods
if [[ `hostname -s` = iia* ]]; then
    unset LS_COLORS #iia6 reads the sys defaults in 
    
    # set http proxy stuff
    source /data/ml/nfs/Development/exp/setup/dotfiles/bash/.bashrc

    # set to local vim
    export VIMRUNTIME=~/app/vim/runtime
    export PATH=~/app/vim/src/:$PATH
fi

export PS1_bac=$PS1
export PATH=$PATH:~/anaconda/bin
source ~/anaconda/bin/activate ~/anaconda 
echo "loaded anaconda"
export PS1=$PS1_bac

source ~/.zshrc_password

cd ~

export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/chrismoody/.boot2docker/certs/boot2docker-vm

# to unmap ctrl-s, which is used to send vim code to ipython
stty stop undef 

# Set LS colors
eval `dircolors ~/.dotfiles/dircolors.ansi-light`

source ~/.zshrc_local
