#!/bin/bash

SCRIPT_PATH=$(realpath $0)
DIR=$(dirname $SCRIPT_PATH)

if ! hash git; then
	echo "install git!";
	exit 1;
fi

if [ ! -e ~/.gitconfig.custom ]; then
	ln -s "$DIR/.gitconfig.custom" ~/;
	echo -e "[include]\n\tpath = ~/.gitconfig.custom\n" >> ~/.gitconfig
fi
