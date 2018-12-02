#!/bin/bash

SCRIPT_PATH=$(realpath $0)
DIR=$(dirname $SCRIPT_PATH)

if ! hash playerctl; then
	echo "install playerctl!";
	exit 1;
fi

if ! hash pasystray; then
	echo "install pasystray!";
	exit 1;
fi

if [ ! -e ~/.signature ]; then
	ln -s "$DIR/.signature" ~/;
fi
