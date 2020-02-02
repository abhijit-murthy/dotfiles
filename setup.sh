#!/bin/bash

if ! hash realpath; then
	echo "realpath not installed!";
	exit 1;
fi

packages="bash env i3 tmux vim git xresources emacs";

for package in $packages; do
	bash "$package/setup.sh";
	if [ $? -eq 1 ]; then
		echo "error in setup of $package";
		exit 1;
	fi
done

echo "setup done!";
