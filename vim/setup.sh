#!/bin/bash

SCRIPT_PATH=$(realpath $0)
DIR=$(dirname $SCRIPT_PATH)

if ! hash vim; then
	echo "install vim!";
	exit 1;
fi

if ! hash ack; then
	echo "ack missing, installing";
	curl https://beyondgrep.com/ack-2.18-single-file > ~/bin/ack && chmod 0755 ~/bin/ack;
fi

if [ ! -e ~/.vimrc ]; then
	ln -s "$DIR/.vim/" ~/;
	ln -s "$DIR/.vimrc" ~/;
	ln -s "$DIR/.vimrc-c++" ~/;
fi
