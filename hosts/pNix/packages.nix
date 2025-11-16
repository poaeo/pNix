{
  pkgs,
  ...
}:

with pkgs;
[
  czkawka
  ydotool
  ffmpeg_7
  imagemagick
  kdePackages.ktorrent
  bottles
  sysstat
  leptonica
  tesseract4
  zxing
  jdk17
 #  palemoon-bin
#  stremio
  nextcloud31
#  nextcloud-client
  filezilla 
#  bottles
  rambox
  chromium
  thunderbird
  libreoffice-qt6-fresh
  wine
  kdePackages.kget
  #element-desktop
  #element-web
  exfatprogs
  kdePackages.kdesu
  kdePackages.qtmultimedia
  kdePackages.korganizer
  librewolf
  fzf
  neofetch
  #teams-for-linux
  #spyder
  floorp-bin
  krita
  inkscape
  obs-studio
  protonvpn-gui
  gemini-cli
  corepack
  #pnpm
  gemini-cli
  nitch
  webcamoid
  #kdePackages.kamoso
   ## SITEE
  nodejs_24
  ripgrep
  ruff
  bind
  busybox

  #python313Full
  #kdePackages.merkuro

  hunspell
  hunspellDicts.tr_TR
  hunspellDicts.en_US-large



  wget
  plasma-panel-spacer-extended
  libsForQt5.qt5ct
  kdePackages.qt6ct
  libsForQt5.qtstyleplugins
  #graphite
  #peazip
  #cider-2
  #obsidian
  wezterm
  kdePackages.kate
  kdePackages.partitionmanager
  kdePackages.dolphin
  kdePackages.plasma-browser-integration
  firefox 

  # TUI
  btop
  yazi
  cowsay

  # Desktop
  #hyprlock
  nwg-look
  #walker

  # Development 
  jetbrains.pycharm-professional
  jetbrains.idea-ultimate

  # Utilities
  appimage-run
  jq
  socat
  tree
  #libnotify
  #nvd
  wl-clipboard
  #pywalfox-native
  imagemagick
  rar
  unzip
  droidcam
  #gowall
  gruvbox-gtk-theme
  #papirus-icon-theme
  #grimblast
  #gpu-screen-recorder
  mpv
  haruna
  #slop

  #FUN
  # stremio
  brave


  
  # Quickshell stuff
  qt6Packages.qt5compat
  libsForQt5.kdbusaddons
  libsForQt5.qt5.qtgraphicaleffects
  kdePackages.kpmcore
  kdePackages.qtbase
  kdePackages.qtdeclarative
  kdePackages.qt5compat
  darkly-qt5 
  darkly

  #qt5ct

  #wl-screenrec
  #app2unit
  #fuzzel
  #cliphist
  #kdePackages.pulseaudio-qt
  #glib


  # Niri
  #xwayland-satellite
  #grim
  #slurp
  #wl-clipboard

  
  # OPSEC
  veracrypt
#  kdePackages.plasma-vault
  cryfs
  encfs
  #clamav
  #rkhunter
  #chkrootkit

]


