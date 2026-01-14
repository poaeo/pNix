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
      profiles.default = {
    settings = {
      # 1. Performance: Enable Hardware Acceleration (VA-API)
      "media.ffmpeg.vaapi.enabled" = true;
      "gfx.webrender.all" = true;
      
      # 2. Memory: Aggressive Tab Unloading
      # Unloads idle tabs when system RAM is low
      "browser.low_commit_space_threshold_mb" = 1000; # 1GB threshold
      "browser.tabs.unloadOnLowMemory" = true;
      
      # 3. Privacy & Bloat: Disable Telemetry/Pocket (Saves CPU)
      "extensions.pocket.enabled" = false;
      "datareporting.healthreport.uploadEnabled" = false;
      "toolkit.telemetry.enabled" = false;
      
      # 4. UI: Minimalist (Saves GPU/RAM)
      "browser.compactmode.show" = true;
      "browser.aboutConfig.showWarning" = false;
    };
  };

    };
  };
}

