#!/bin/bash

SCRIPT_PATH=$(realpath $0)
DIR=$(dirname $SCRIPT_PATH)

if ! hash fd; then
    echo "install fd-find!";
    exit 1;
fi

if [ ! -e ~/bash_customizations/ ]; then
	ln -s "$DIR/bash_customizations/" ~/;
	echo "source ~/bash_customizations/bash_customizations.sh" >> ~/.bashrc;
fi
