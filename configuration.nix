# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

# NixOS-WSL specific options are documented on the NixOS-WSL repository:
# https://github.com/nix-community/NixOS-WSL

{ config, lib, pkgs, ... }:
{
  nix.settings.substituters = [ "https://mirror.sjtu.edu.cn/nix-channels/store" ];

  imports = [
    # include NixOS-WSL modules
    <nixos-wsl/modules>
  ];

  wsl.enable = true;
  wsl.defaultUser = "snuffred";

  environment.systemPackages = with pkgs;
    [
      git
      vim
      wget
      neovim
      nixpkgs-fmt
      curl
      lazygit
      gcc
      llvm
      zig
      tree-sitter
      nodejs_22
      python3
      lua
      unzip
      openssh
    ];

  programs.nix-ld = {
    enable = true;
    package = pkgs.nix-ld-rs;
  };



  users.users.snuffred = {
    isNormalUser = true;
    hashedPassword = "$y$j9T$J7YDQUc2/DKGvb0piydHJ1$HBUsJbMMh6ot8kIcKdlZ1ePvrmCWuNPJxNKk.vGjOg0";
    home = "/home/snuffred";
    description = "snuffred";
    extraGroups = [ "wheel" "networkmanager" ];
  };

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It's perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; # Did you read the comment?
}
