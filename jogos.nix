{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    godot blender krita tiled
   ];
}
