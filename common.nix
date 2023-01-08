{config, lib, pkgs, ... }:
{
  home.packages = [
    pkgs.neovim
    pkgs.nodejs
    pkgs.ripgrep
    pkgs.tmux
    (pkgs.buildEnv {
        name = "scripts";
        paths = [ ./scripts ];
    })
  ];
  home.file.".config/nvim".source = ./vim;
  home.file.".gitconfig.custom".source = ./git/.gitconfig.custom;
  home.sessionPath = [
    "$HOME/.cargo/bin"
  ];

  imports = [
     ./zsh.nix
     ./tmux.nix
  ];
}
