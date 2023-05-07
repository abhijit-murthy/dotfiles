{config, lib, pkgs, ... }:
{
  programs.tmux = {
    enable = true;
    keyMode = "vi";
    prefix = "C-a";
    terminal = "screen-256color";
    shell = "~/.nix-profile/bin/zsh";
    plugins = with pkgs; [
      tmuxPlugins.sensible
      tmuxPlugins.yank
      {
        plugin = tmuxPlugins.gruvbox;
        extraConfig = "set -g @tmux-gruvbox 'dark'";
      }
    ];
    extraConfig = ''
        bind | split-window -h
        bind - split-window -v
        unbind '"'
        unbind %
        set -g mouse on
        # Sensible overwrites this to
        # the user default shell. But
        # if the default isn't zsh you'll
        # drop into the user default (or
        # the system zsh). Clear this so
        # tmux starts the nix zsh by default.
        set -g default-command ""

	setenv -g SSH_AUTH_SOCK $HOME/.ssh/ssh_auth_sock
	set -g update-environment -r
    '';
  };
}
