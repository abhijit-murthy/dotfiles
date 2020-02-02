#!/bin/bash

SCRIPT_PATH=$(realpath $0)
DIR=$(dirname $SCRIPT_PATH)

if ! hash emacs; then
	echo "emacs not installed!";
	exit 1;
fi

VERSION=$(emacs --version | head -n1)
case "$VERSION" in
    *\ 2[0-5].[0-9])
	echo "Detected Emacs $VERSION";
	echo "Need Emacs 26.1 and newer";
	exit 1
	;;
esac

if [ ! -e ~/.emacs ]; then
    ln -s "$DIR/.emacs" ~/.emacs;
fi

