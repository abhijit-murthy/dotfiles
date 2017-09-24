#!/bin/bash

SCRIPT_PATH=$(realpath $0)
DIR=$(dirname $SCRIPT_PATH)

if ! hash i3; then
	echo "install i3!";
	exit 1;
fi

if [ ! -e ~/.i3/ ]; then
	ln -s "$DIR/.i3" ~/;
fi
