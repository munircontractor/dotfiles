# Begin ~/.bashrc
# Author: Munir Contractor

# Personal aliases and functions

# Source system bashrc
if [ -f "/etc/bashrc" ] ; then
    source /etc/bashrc
fi

# Bash function to clean output of script
function clean-script {
    if [ -z "$1" ] ; then
        echo "Need an input file name"
        return
    elif [ -z "$2" ] ; then
        cat $1 | perl -pe 's/\e([^\[\]]|\[.*?[a-zA-Z]|\].*?\a)//g' | col -b
    else
        cat $1 | perl -pe 's/\e([^\[\]]|\[.*?[a-zA-Z]|\].*?\a)//g' | col -b > $2
    fi
}

# Bash function to get current git branch
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Set PS1 with hostname, working directory and git branch
NORMAL="\[\e[0m\]"
RED="\[\e[1;31m\]"
GREEN="\[\e[1;32m\]"
YELLOW="\[\e[1;33m\]"
if [[ $EUID == 0 ]] ; then
    PS1="$RED\u@\h [ $NORMAL\w$YELLOW\$(parse_git_branch)$RED ]# $NORMAL"
else
    PS1="$GREEN\u@\h [ $NORMAL\w$YELLOW\$(parse_git_branch)$GREEN ]\$ $NORMAL"
fi

unset RED GREEN NORMAL

# Some personal aliases that I use
# Words in <> should be substituted with actual values
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias shutdown='sudo poweroff'
alias radeontop='sudo radeontop -c'
alias valgrind='valgrind --leak-check=full'
alias ssh_nyu='ssh <username>@access.cims.nyu.edu'
alias ssh_stampede='ssh <username>@stampede.tacc.utexas.edu'

# End ~/.bashrc
