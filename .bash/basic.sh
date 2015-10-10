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
PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/usr/bin/core_perl:/usr/bin/site_perl
PATH=/usr/local/texlive/2014/bin/x86_64-linux:$PATH
PATH=/opt/slimerjs:$PATH
PATH=/opt/sage-5.9.beta0:$PATH
PATH=/home/raniere/src/julia:$PATH
PATH=/home/raniere/.gem/ruby/2.0.0/bin:$PATH
PATH=/opt/android-sdk/tools:/opt/android-sdk/platform-tools:$PATH
PATH=/home/raniere/bin:$PATH
export PATH

LIBRARY_PATH=/usr/lib:/usr/local/lib
export LIBRARY_PATH

LD_LIBRARY_PATH=/usr/lib:/usr/local/lib
export LD_LIBRARY_PATH

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

# Set editor
export EDITOR=/usr/bin/vim

# Environment variables for compile programs
export CC=/usr/bin/gcc
export FC=/usr/bin/gfortran

# Avoid C-s problem
#
# To restore from C-s use C-q.
#stty ixany
#stty ixoff -ixon

INFOPATH=/opt/texlive/texmf/info:/opt/texlive/texmf/info:/opt/texlive/texmf/info:${INFOPATH}
MANPATH=/opt/texlive/texmf/doc/man:/opt/texlive/texmf/doc/man:/opt/texlive/texmf/doc/man:${MANPATH}
