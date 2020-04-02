# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# Default programs:
export TERMINAL=st
export EDITOR=nvim
export VISUAL=nvim
export WEBBROWSER=qutebrowser
export FILEMANAGER=ranger

# Config directories:
export ZDOTDIR="$HOME/.config/zsh"

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Add snap to path
export PATH=$PATH:/snap/bin

# Add scripts to path
export PATH=$PATH:~/.scripts

# Add local bin to path
export PATH=$PATH:~/.local/bin

# Add global npm path
export PATH=$PATH:~/.npm-global/bin

