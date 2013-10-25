#!/bin/bash
#
# Fetch all branch branchs for all repository in a directory.
#
#     $ ./git-fetch.sh /full/path/to/dir
#
# This is intended to be used by cron.

cd $1
for d in $(find ${PWD} -maxdepth 2 -name '*git')
do
    cd $d;
    git fetch -v --all;
    cd ..;
done
