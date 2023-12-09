{
  config,
  pkgs,
  ...
}:

{
imports = [
  ./windowmanager/hyprland.nix
  ./waybar
];
}