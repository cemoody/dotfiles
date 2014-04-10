##############################################################
# bootstrap Square bash_profile; please don't change this bit.
##############################################################
if [[ -d "$HOME/Development" ]]; then
  SQUARE_HOME=$HOME/Development
fi
export SQUARE_HOME
if [[ -f "$SQUARE_HOME/config_files/square/bash_profile" ]]; then
  source $SQUARE_HOME/config_files/square/bash_profile
fi
##############################################################


###########################################
# Feel free to make your own changes below.
###########################################

# Uncomment to preserve the last pair'd authors:
# pair >/dev/null

# Or uncomment this to always reset it to yourself in a new shell:
# pair $USER >/dev/null

# Print the current git author when the shell loads
if [[ -n $(which git) ]]; then
  printf "${COLOR_LIGHT_CYAN}Current git author:${COLOR_WHITE} ${GIT_AUTHOR_NAME:-$(git config user.name)} <${GIT_AUTHOR_EMAIL:-$(git config user.email)}>\n${COLOR_NC}"
fi

. ~/.dotfiles/z/z.sh

alias unity="ssh-add && ssh -Nv -L3306:localhost:3306 fia17.sjc1b.square"
alias unity20='ssh-add && ssh -Nv -L3307:localhost:3306 fia20.sjc1b.square'
alias pi='ssh pi@chrisemoody.no-ip.biz'

export EDITOR=vim
export PS1='\[\e[0;37m\]\w\[\e[0m\]\[\e[1;36m\]$(__git_ps1 " %s")\[\e[0m\] '
export DATABASE_HOST_HIVE='gun7.sjc1c.square'
export DATABASE_USERNAME_HIVE='cemoody'
export DATABASE_PASSWORD_HIVE='anything'
export DATABASE_PORT_HIVE=10000
export DATABASE_NAME_HIVE='wd_cemoody'
export PYTHONPATH=$PYTHONPATH:/Users/cemoody/Development/data-science
export PATH=$PATH:/Applications/Julia-0.3.0-prerelease-fb0bd5c3d1.app/Contents/Resources/julia/bin/

