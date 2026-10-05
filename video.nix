{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    ffmpeg mpv handbrake
    kdePackages.kdenlive obs-studio
    audacity ardour
    krita gimp inkscape blender
  ];
 }
