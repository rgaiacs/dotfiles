#!/bin/bash
#
# Setup the dot files

# Avoid symbolic link loop
rm -f ~/.bash
rm -f ~/.i3
rm -f ~/.mutt
rm -f ~/.vim
rm -f ~/bin

for f in $(ls -A | grep -v -E -f setup-exclude.txt)
do
    # Create symbolic link to files
    ln -v -f -s ${PWD}/$f ~/$f
done

# Create symbolic link to filest that must be in $HOME
ln -v -f -s ${PWD}/.bash/.bashrc ~/.bashrc
ln -v -f -s ${PWD}/.mutt/.muttrc ~/.muttrc
ln -v -f -s ${PWD}/.vim/.vimrc ~/.vimrc
