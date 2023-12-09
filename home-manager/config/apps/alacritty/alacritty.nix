{ config,
  pkgs, 
  ... }:

{
  programs.alacritty = {
    extraConfig = ''
     window:
  padding:
    x: 30
    y: 30
  class:
    instance: Alacritty
    general: Alacritty
  opacity: 1

scrolling:
  history: 10000
  multiplier: 3


font:
  normal:
    family: IosevkaTerm NerdFont
    style:  Regular
  size: 12
draw_bold_text_with_bright_colors: false

colors:
  primary:
    background: "#100d12"
    foreground: "#ea9fa5"
  normal:
    black: "#282828"
    red: "#506B62"
    green: "#8F2935"
    yellow: "#A52235"
    blue: "#AE3843"
    magenta: "#BD3042"
    cyan: "#D63448"
    white: "#EA9FA5"
  bright:
    black: "#A36F73"
    red: "#506B62"
    green: "#8F2935"
    yellow: "#A52235"
    blue: "#AE3843"
    magenta: "#BD3042"
    cyan: "#D63448"
    white: "#EA9FA5"

selection:
  save_to_clipboard: true
 '';
  };
}