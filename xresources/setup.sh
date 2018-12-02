#!/bin/bash

SCRIPT_PATH=$(realpath $0)
DIR=$(dirname $SCRIPT_PATH)

if ! hash xrdb; then
	echo "install xrdb!";
	exit 1;
fi

if [ ! -e ~/.Xresources ]; then
	ln -s "$DIR/.Xresources" ~/;
	xrdb -override ~/.Xresources;
fi
