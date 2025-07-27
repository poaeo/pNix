{ config, lib, pkgs, ... }:

let
  homeDir = config.home.homeDirectory;
  quickshellDir = "~/Projects/nixos/home/quickshell/qml";
  quickshellTarget = "~/.config/quickshell";
  faceIconSource = "~/Projects/nixos/assets/profile.gif";
  faceIconTarget = "~/.face.icon";
in {
  home.activation.symlinkQuickshellAndFaceIcon = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    ln -sfn "${quickshellDir}" "${quickshellTarget}"
    ln -sfn "${faceIconSource}" "${faceIconTarget}"
  '';
}
