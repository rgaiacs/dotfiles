#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

LIST2SOURCE=~/.bash/basic.sh \
    ~/.bash/alias.sh \
    ~/.bash/man.sh \
    ~/.bash/x11.sh \
    ~/.bash/latex.sh \
    ~/.bash/slrn.sh \
    ~/.bash/perl.sh \
    ~/.bash/valgrant.sh


for f in LIST2SOURCE
do
    source ${i}
done

