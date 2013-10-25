#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

############################ Environment variables ############################

# Bourne Shell Variables
#
# For more information see the info of `bash` ("Bourne Shell Variables").
#
# CDPATH
#
# HOME
#
# IFS
#
# MAIL
#
# MAILPATH
#
# OPTARG
#
# OPTIND
#
PATH=/usr/local/bin:$PATH
PATH=/opt/firefox:$PATH
PATH=/opt/sage-5.9.beta0:$PATH
PATH=/opt/texlive/bin/x86_64-linux:$PATH
PATH=/home/raniere/src/julia:$PATH
PATH=/home/raniere/.gem/ruby/2.0.0/bin:$PATH
export PATH=/home/raniere/bin:$PATH
#
PS1='[\u@\h \W]\$ '
#
# PS2

# Bash Variables
#
# For more information see the info of `bash` ("Bash Variables").
#
# BASH
#
# BASHOPTS
#
# BASHPID
#
# BASH_ALIASES
#
# BASH_ARGC
#
# BASH_ARGV
#
# BASH_CMDS
#
# BASH_COMMANDS
#
# BASH_ENV
#
# BASH_EXECUTION_STRING
#
# BASH_LINENO
#
# BASH_REMATCH
#
# BASH_SOURCE
#
# BASH_SUBSHELL
#
# BASH_VERSINFO
#
# BASH_VERSION
#
# BASH_XTRACEFD
#
# COLUMNS
#
# COMP_CWORD
#
# COMP_LINE
#
# COMP_POINT
#
# COMP_TYPE
#
# COMP_KEY
#
# COMP_WORDBREAKS
#
# COMP_WORDS
#
# COMPREPLY
#
# COPROC
#
# DIRSTACK
#
# EMACS
#
# ENV
#
# EUID
#
# FCEDIT
#
# FIGNORE
#
# FUNCNAME
#
# FUNCNEST
#
# GLOBIGNORE
#
# GROUPS
#
# histchars
#
# HISTCMD
#
# HISTCONTROL
#
# HISTFILE
#
# HISTFILESIZE
#
# HISTIGNORE
#
# HISTSIZE
#
# HISTTIMEFORMAT
#
# HOSTFILE
#
# HOSTNAME
#
# HOSTTYPE
#
# IGNOREEOF
#
# INPUTRC
#
# LANG
#
# LC_ALL
#
# LC_COLLATE
#
# LC_CTYPE
#
# LC_MESSAGES
#
# LC_NUMERIC
#
# LINENO
#
# LINES
#
# MACHTYPE
#
# MAILCHECK
#
# MAPFILE
#
# OLDPWD
#
# OPTERR
#
# OSTYPE
#
# PIPESTATUS
#
# POSIXLY_CORRECT
#
# PPID
#
# PROMPT_COMMAND
#
# PROMPT_DIRTRIM
#
# PS3
#
# PS4
#
# PWD
#
# RANDOM
#
# READLINE_LINE
#
# READLINE_POINT
#
# REPLY
#
# SECONDS
#
export SHELL=/bin/bash
#
# SHELLOPTS
#
# SHLVL
#
# TIMEFORMAT
#
# THOUT
#
# TMPDIR
#
# UID

# More paths
export MANPATH=/opt/texlive/texmf/doc/man:$MANPATH
export INFOPATH=/opt/texlive/texmf/info:$INFOPATH

# For slrn
export NNTPSERVER='localhost'

# Avoid X pop asking ssh pass
unset SSH_ASKPASS

# Set editor
export EDITOR=/usr/bin/vim

# Environment variables for compile programs
export CC=/usr/bin/gcc
export FC=/usr/bin/gfortran

# TeX variables
unset TEXINPUTS
unset TEXMFCONFIG

# Alias
alias info='info --vi-keys'
alias ls='ls --classify --color=auto'
alias 'ytdl'="youtube-dl -t --restrict-filenames -f 45/44/43/22/20/18"
alias 'ytbc'="youtube-dl -t --restrict-filenames --write-info-json -f 45/44/43/22/20/18"
alias 't'="task"

# tmuxinator
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
