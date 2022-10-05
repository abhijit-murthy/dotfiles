{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "nix_test_user";
  home.homeDirectory = "/home/nix_test_user";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

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

  programs.fzf.enable = true;
  programs.fzf.enableZshIntegration = true;

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;
    history.extended = true;
    sessionVariables = rec {
        EDITOR = "nvim";
    };
    oh-my-zsh = {
        enable = true;
        plugins = ["vi-mode"];
        theme = "af-magic";
    };
  };

  home.sessionPath = [
    "$HOME/.cargo/bin"
  ];

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
    '';
  };


  home.file.".config/nvim".source = ./vim;
  home.file.".gitconfig.custom".source = ./git/.gitconfig.custom;
}
