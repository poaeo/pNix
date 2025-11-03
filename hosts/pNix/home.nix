{
  config,
  pkgs,
  inputs,
  self,
  ...
}:
################### CLEAN SHIT UP MAN CMON
let
  allPackages = import ./packages.nix { inherit pkgs; };
in
{
  home.username = "d";
  home.homeDirectory = "/home/d";

  imports = [
    ../../home/programs/nushell.nix
  ];

  home.packages = allPackages;


# KDE CONNECT


  services.kdeconnect.enable = true;

  home.stateVersion = "24.11";

  home.sessionVariables = {
    #QT_QPA_PLATFORMTHEME = "qt5ct";
    EDITOR = "nvim";
  };
  programs = {
    home-manager.enable = true;
    #home-manager.backupFileExtension = "backup";
    firefox = {
      enable = true;
      nativeMessagingHosts = [
        pkgs.kdePackages.plasma-browser-integration 
      ];
    };
  };
}

