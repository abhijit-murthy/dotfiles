#!/bin/bash

SCRIPT_PATH=$(realpath $0)
DIR=$(dirname $SCRIPT_PATH)

if ! hash tmux; then
	echo "install tmux!";
	exit 1;
fi

if [ ! -e ~/.tmux.conf ]; then
	ln -s "$DIR/.tmux.conf" ~/;
fi
