#!/bin/bash

if ! command -v stow 2>&1 1>/dev/null; then
    echo "install stow!";
fi

stow scripts tmux vim zsh alacritty
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "setup done!";
