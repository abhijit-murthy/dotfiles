{config, lib, pkgs, ... }:
{
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

}
