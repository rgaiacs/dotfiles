#!/bin/bash
#
# This is a setup for new projects based on the GNU Coding Standards
# and Gnits Standards.
#
# For more information about GNU Coding Standards visit:
# http://www.gnu.org/prep/standards/standards.html.
#
# For more information about Gnits Standards visit:
# http://gnu.cs.pu.edu.tw/software/womb/gnits/.

while getopts h name
do
    case $name in
        (h|?)
            echo "Setup for new project."
            echo ""
            echo "Usage: setup-new-project.sh"
            exit 2;;
    esac
done

# initialize git repository
git init -q

# create directory for the source code
mkdir src

# create directory for the documentation
mkdir doc

# create NEWS file
#
# The package should have a file named NEWS which contains a list of
# user-visible changes worth mentioning. In each new release, add items to the
# front of the file and identify the version they pertain to. Don’t discard old
# items; leave them in the file after the newer items. This way, a user
# upgrading from any previous version can see what is new.
#
# For this file you can use git-shortlog and date.
touch -a NEWS

# create ChangeLog file
#
# Keep a change log to describe all the changes made to program source files.
# The purpose of this is so that people investigating bugs in the future will
# know about the changes that might have introduced the bug. Often a new bug can
# be found by looking at what was recently changed. More importantly, change
# logs can help you eliminate conceptual inconsistencies between different parts
# of a program, by giving you a history of how the conflicting concepts arose
# and who they came from.
#
# This have been deprecated because of control version system.
#touch -a ChangeLog

# create README file
#
# This is the first file an installer should look at and fully read after
# unpacking a distribution and prior to configuring it. All other documentation
# files should be referred to, directly or indirectly, from the README file.
touch -a README
echo "<PROJECT NAME>" >> README
echo "==============" >> README

# create INSTALL file
touch -a INSTALL

# create AUTHORS file
touch -a AUTHORS
echo "${USER} <${USER}@localhost>" >> AUTHORS

# create THANKS file
#
# In Emacs, thanks are not published for the people who just send bug fixes.
# There are too many of them. The only people thanked are those who do larger
# amounts of work. However, if you find it is OK to thank them all, that is OK
# (letter from Richard, 1995-09-20).
touch -a THANKS
echo "Many people further contributed to <PROJECT NAME> by reporting problems," >> THANKS
echo "suggesting various improvements or submitting actual code. Here is a" >> THANKS
echo "list of these people. Help me keep it complete and exempt of errors." >> THANKS

# create CONTRIBUTING
touch -a CONTRIBUTING
echo "Just mail to one of the authors." >> CONTRIBUTING

echo "WARNING: You still need to create a COPYING file. For that"
echo "you can use lice."
echo ""
echo "Write information in the files and make your first commit."
