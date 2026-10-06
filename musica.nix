{ pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    ardour lmms audacity musescore
   ];
}
