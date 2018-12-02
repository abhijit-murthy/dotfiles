#!/bin/bash

SCRIPT_PATH=$(realpath $0)
DIR=$(dirname $SCRIPT_PATH)

if ! hash fish; then
	echo "install fish!";
	exit 1;
fi

if [ ! -e ~/.config/fish/config.fish ]; then
	ln -s "$DIR/config.fish" ~/.config/fish/;
	ln -s "$DIR/functions" ~/.config/fish/;
fi
