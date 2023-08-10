{ config, pkgs, user, nixpkgs, ... }:
{
  users.users."${user}" = {
    home = "/Users/${user}";
    shell = pkgs.zsh;
  };

  networking = {
    computerName = "cupskrrtt";
    hostName = "cupskrrtt";
  };

  fonts = {
    fontDir.enable = true;
    fonts = with pkgs; [
      (nerdfonts.override { fonts = [ "Hack" ]; })
    ];
  };

  programs = {
    # Shell needs to be enabled
    zsh.enable = true;
  };

  services = {
    nix-daemon.enable = true;
  };

  nixpkgs.config.allowUnfree = true;

  nix = {
    package = pkgs.nix;
    gc = {
      # Garbage collection
      automatic = true;
      interval.Day = 7;
      options = "--delete-older-than 7d";
    };
    extraOptions = ''
      auto-optimise-store = true
      experimental-features = nix-command flakes
    '';
  };

  system = {
    defaults = {
      NSGlobalDomain = {
        # Global macOS system settings
        KeyRepeat = 1;
        NSAutomaticCapitalizationEnabled = false;
        NSAutomaticSpellingCorrectionEnabled = false;
      };
      dock = {
        # Dock settings
        autohide = true;
        orientation = "bottom";
        showhidden = true;
        tilesize = 40;
      };
    };
    activationScripts.postActivation.text = ''sudo chsh -s ${pkgs.zsh}/bin/zsh''; # Since it's not possible to declare default shell, run this command after build
    stateVersion = 4;
  };

}
