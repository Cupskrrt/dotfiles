{ pkgs, ... }: {
  home = {
    # Specific packages for macbook
    packages = with pkgs; [
      # Terminal
      git
      nodejs
      yarn
      neovim
      stow
      exa
      starship
      tmux
      lazygit
      direnv
      # App
      alacritty
      # raycast
      rectangle
      postman
    ];
    stateVersion = "23.05";
  };

  programs = {
    zsh = {
      enable = true;
      enableAutosuggestions = true;
      sessionVariables = {
        # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/tmux#configuration-variables
        # automatically start tmux
        ZSH_TMUX_AUTOSTART = "true";
        ZSH_TMUX_CONFIG = "$HOME/.config/tmux/tmux.conf";
      };

      enableSyntaxHighlighting = true;
      shellAliases = {
        ls = "exa --long --header --all --icons";
        gl = "lazygit";
        proj = "cd /Volumes/Cup/Dev/Projects/";
        work = "cd /Volumes/Cup/Dev/Work/";
        rebuild = "darwin-rebuild switch --flake ~/dotfiles/nix/.config/nix-darwin";
      };

      initExtra = ''
        eval "$(starship init zsh)"
      '';

      oh-my-zsh = {
        enable = true;
        plugins = [ "tmux" ];
      };
    };

    tmux = {
      enable = true;
      terminal = "screen-256color";
      extraConfig = ''
        set -g allow-rename on
        set -g automatic-rename on

        set-option -ga terminal-overrides ",xterm-256color:Tc"

        # --> Catppuccin (Mocha)
        thm_bg="#1e1e2e"
        thm_fg="#cdd6f4"
        thm_cyan="#89dceb"
        thm_black="#181825"
        thm_gray="#313244"
        thm_magenta="#cba6f7"
        thm_pink="#f5c2e7"
        thm_red="#f38ba8"
        thm_green="#a6e3a1"
        thm_yellow="#f9e2af"
        thm_blue="#89b4fa"
        thm_orange="#fab387"
        thm_black4="#585b70"

        # =====================================
        # ===    Appearence and status bar  ===
        # =====================================
        set -g mode-style "fg=$thm_fg,bg=$thm_bg"

        # command line style
        set -g message-style "fg=$thm_fg,bg=$thm_black4"

        # status line style
        set -g status-style "fg=$thm_blue,bg=$thm_bg"

        # general status bar settings
        set -g status on
        set -g status-interval 5
        set -g status-position top
        set -g status-justify left
        set -g status-right-length 100

        # define widgets we're going to use in status bar
        # note, that this is not the complete list, some of them are loaded from plugins
        wg_session="#[fg=$thm_fg] #S #[default]"
        wg_battery="#{battery_percentage}"
        wg_date="#[fg=$thm_blue]%h %d %H:%M#[default]"
        wg_user_host="#[fg=$thm_bleu]#(whoami)#[default]"

        set -g status-left "$wg_session"
        set -g status-right "$wg_user_host | $wg_date"
      '';
    };

    git = {
      enable = true;
      userName = "Luthfi Khan";
      userEmail = "khanalfarizzi@hotmail.com";
      };
  };

}
