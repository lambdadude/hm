{ config, 
  pkgs, 
  ... }:

{
  imports = [
    ./config/wayland
    ./config/apps/alacritty
  ];
}
