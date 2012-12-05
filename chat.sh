#!/bin/sh
tmux new-session -d -s chat 'newsbeuter'
tmux splitw -p 50 'weechat-curses'
tmux -2 attach-session -t chat
