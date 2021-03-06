#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '
#
# PS2
#
export SHELL=/bin/bash

# Some bug make it not work with shell expansion
for f in ~/.bash/basic.sh \
    ~/.bash/alias.sh \
    ~/.bash/x11.sh \
    ~/.bash/latex.sh \
    ~/.bash/slrn.sh \
    ~/.bash/perl.sh \
    ~/.bash/valgrant.sh
do
    if [ -f ${f} ]; then
        source ${f}
    fi
done

