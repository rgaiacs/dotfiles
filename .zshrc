export SHELL=/usr/bin/zsh

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
zstyle :compinstall filename '/home/raniere/.zshrc'

# Some bug make it not work with shell expansion
for f in ~/.bash/basic.sh \
    ~/.bash/alias.sh \
    ~/.bash/x11.sh \
    ~/.bash/latex.sh \
    ~/.bash/slrn.sh \
    ~/.bash/perl.sh
do
    if [ -f ${f} ]; then
        source ${f}
    fi
done

autoload -Uz compinit
compinit

autoload -U promptinit
promptinit

PROMPT="[%n@%M] %~
%# "
