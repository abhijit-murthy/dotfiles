#!/bin/bash

SCRIPT_PATH=$(realpath $0)
DIR=$(dirname $SCRIPT_PATH)

if ! hash nvim; then
	echo "install neovim!";
	exit 1;
fi

if [ ! -e ~/.config/nvim ]; then
	mkdir -p ~/.config/nvim
	ln -s "$DIR/init.vim" ~/.config/nvim/init.vim;
	ln -s "$DIR/autoload" ~/.config/nvim/;
fi
