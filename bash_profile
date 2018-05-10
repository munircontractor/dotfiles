# Begin ~/.bash_profile
# Author: Munir Contractor

# Personal environment variables and startup programs.

if [ -f "$HOME/.bashrc" ] ; then
    source $HOME/.bashrc
fi

if [ -d "$HOME/bin" ] ; then
    PATH=$HOME/bin:$PATH
    export PATH
fi

export HISTIGNORE="&:[bf]g:ls:logout:exit: *"

# Start XFCE desktop on login
# Remove if not using XFCE
if [ "$(tty)" = "/dev/tty1" -o "$(tty)" = "/dev/vc/1" ] ; then
    startxfce4
fi

# End ~/.bash_profile

