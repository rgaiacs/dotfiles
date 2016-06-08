#!/bin/bash
if [ "$1" = 'windows' ]
then
	tmux new-session -d -s chat 'newsbeuter'
	tmux new-window 'weechat-curses'
	tmux new-window 'fetchmail; mutt'
	tmux -2 attach-session -t chat
else
	tmux new-session -d -s chat 'newsbeuter'
	tmux splitw -p 50 'weechat-curses'
	tmux -2 attach-session -t chat
fi
