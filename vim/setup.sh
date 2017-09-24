#!/usr/bin/bash

SCRIPT_PATH=$(realpath $0)
DIR=$(dirname $SCRIPT_PATH)

if ! hash vim; then
	echo "install vim!";
	exit 1;
fi

if [ ! -e ~/.vimrc ]; then
	ln -s "$DIR/.vim/" ~/;
	ln -s "$DIR/.vimrc" ~/;
	ln -s "$DIR/.vimrc-c++" ~/;
fi
