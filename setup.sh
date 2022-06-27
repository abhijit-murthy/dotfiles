#!/bin/bash

if ! command -v nix-shell 2>&1 1>/dev/null; then
   curl -L https://nixos.org/nix/install | sh;
   source $HOME/.nix-profile/etc/profile.d/nix.sh;


   export NIX_PATH=$HOME/.nix-defexpr/channels:/nix/var/nix/profiles/per-user/root/channels${NIX_PATH:+:$NIX_PATH};
   nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager;
   nix-channel --update;
   nix-shell '<home-manager>' -A install;

   SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
   if [ -e ~/.config/nixpkgs ]; then
       rm -r ~/.config/nixpkgs;
   fi
   ln -s $SCRIPT_DIR ~/.config/nixpkgs
   echo "source $HOME/.nix-profile/etc/profile.d/nix.sh" >> ~/.bashrc
   mkdir -p ~/bin;
   cp $SCRIPT_DIR/launch_env ~/bin;
   echo "export PATH=$PATH:~/bin" >> ~/.bashrc;
   sed -i "s/USERNAME_HERE/$USER" home.nix
fi


echo "setup done!";
