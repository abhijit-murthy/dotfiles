#!/bin/bash

SCRIPT_PATH=$(realpath $0)
DIR=$(dirname $SCRIPT_PATH)

if ! hash tmux; then
	echo "install tmux!";
	exit 1;
fi

VERSION=$(tmux -V | awk -F" " '{print $2}')
TEST=$(echo $VERSION'>= 2.5 ' | bc -l)
if [ "$TEST" -eq "0" ]; then
	echo "tmux version 2.5+ needed";
	exit 1;
fi

if [ ! -e ~/.tmux.conf ]; then
	ln -s "$DIR/.tmux.conf" ~/;
fi
