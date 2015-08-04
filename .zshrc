#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
ZSH_THEME="agnoster"
export PATH="/Users/cemoody/anaconda/bin:/Users/cemoody/.rvm/gems/ruby-2.0.0-p353/bin:/Users/cemoody/.rvm/bin:/Users/cemoody/Development/topsoil/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:/Users/cemoody/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:/usr/texbin:/usr/local/sbin:/Applications/Julia-0.3.0-prerelease-fb0bd5c3d1.app/Contents/Resources/julia/bin/"
# this adds the path fore coreutils, which includes timeout
if which brew >/dev/null ; then
    export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
fi

. ~/.dotfiles/z/z.sh

alias ll='ls -alh'
export EDITOR=vim
export PS1_bac=$PS1
export PATH=$PATH:~/anaconda/bin
source ~/anaconda/bin/activate ~/anaconda 2>/dev/null
export PS1=$PS1_bac

source ~/.zshrc_password 2>/dev/null

cd ~

export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/chrismoody/.boot2docker/certs/boot2docker-vm

# to unmap ctrl-s, which is used to send vim code to ipython
stty stop undef 

# Set LS colors
eval `dircolors ~/.dotfiles/dircolors.ansi-light`

# Add DIRLIBFM
export DIRLIBFM=/Users/chrismoody/code/libfm

source ~/.zshrc_local 2>/dev/null

export PATH=/home/moody/code/torch/install/bin:$PATH  # Added automatically by torch-dist
export LD_LIBRARY_PATH=/home/moody/code/torch/install/lib:$LD_LIBRARY_PATH  # Added automatically by torch-dist
# export DYLD_LIBRARY_PATH=/home/moody/code/torch/install/lib:$DYLD_LIBRARY_PATH  # Added automatically by torch-dist

alias gl='git pull'
alias gp='git push'
alias gd='git diff'
alias gc='git commit -v'
alias gc!='git commit --ammend -v'
alias gca='git commit -a -v'
alias gca!='git commit -a --ammend -v'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status'
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"

export EDITOR=vim
export VISUAL=vim
