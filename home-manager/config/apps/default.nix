{ config,
  pkgs,
  ...
}:

{
imports = [
  ./alacritty
  ./waybar
];
programs.alacritty = {
  enable = true;
 };
}