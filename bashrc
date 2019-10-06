# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

# Some applications read the EDITOR variable to determine your favourite text
# editor. So uncomment the line below and enter the editor of your choice :-)
export EDITOR=/usr/bin/vim

# For some news readers it makes sense to specify the NEWSSERVER variable here
#export NEWSSERVER=your.news.server

test -s ~/.alias && . ~/.alias || true

source ~/.bashutil/colors

__has_parent_dir () {
    # Utility function so we can test for things like .git/.hg without firing up a
    # separate process
    test -d "$1" && return 0;

    current="."
    while [ ! "$current" -ef "$current/.." ]; do
        if [ -d "$current/$1" ]; then
            return 0;
        fi
        current="$current/..";
    done

    return 1;
}

__vcs_name() {
    if [ -d .svn ]; then
        echo "${yellow}${redbg}${black}svn${reset}${red}";
    elif __has_parent_dir ".git"; then
        echo "${yellow}${redbg}${white}git ${black}$(__git_ps1 '%s')${reset}${red}";
    elif __has_parent_dir ".hg"; then
       echo "${yellow}${redbg}${black}hg $(hg branch)${reset}${red}"
    else
       echo "${yellow}"
    fi
}

export PS1='\n\[$bluebg\] \[$white\]\t\[$reset$blue$greenbg\]\u\[$reset$green$yellowbg\]\[$black\]\w\[$reset\]$(__vcs_name)\[$reset\]\n> '

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

PATH="${PATH}:${HOME}/.composer/vendor/bin"
