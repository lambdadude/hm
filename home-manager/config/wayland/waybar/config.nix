{
  mainBar = {
    layer = "top";
    position = "right";
    height = 900;
    spacing = 2;
    width = 45;
    output = "eDP-1";
    modules-left = [
                      "custom/menu" 
                      "hyprland/workspaces"
                      ];

    modules-center = [
      "custom/hex"
      "custom/wifi"
      "custom/term"
      "custom/code"
      "custom/firefox"
    ];

    modules-right = [
                       "clock" 
                       "backlight" 
                       "pulseaudio" 
                       "battery"
                       "custom/powermenu"
                      ];

    margin-left = 5;
    margin-top = 50;
    margin-bottom = 50;
    margin-right = 5;

    "hyprland/workspaces" = {
      on-click = "activate";
      format = "{icon}";
      active-only = true;
      all-outputs = true;
      format-icons = {
        "1" = "一";
        "2" = "二";
        "3" = "三";
        "4" = "四";
        "5" = "五";
        "6" = "六";
        "7" = "七";
        "8" = "八";
        "9" = "九";
        "10" = "十";
        };
      };

    backlight = {
        format = "{percent}% {icon}";
        format-icons = ["" "" "" "" "" "" "" "" ""];
    };

    "custom/powermenu" = {
        format = "⏻ ";
        on-click = "rofi -show power-menu -modi power-menu:rofi-power-menu";
        tooltip = false;
        };

    "custom/menu" = {
      format = " ";
      tooltip = false;
      on-click = "rofi -show drun";
      };

              "custom/hex" = {
            format = "hex";
            on-click = "hyprpicker | wl-copy";
            tooltip = false;
            };

   "custom/wifi" = {
        format = "wifi";
        on-click = "~/rofi-wifi-menu.sh";
        tooltip = false;
        };

"custom/firefox" = {
    format = "firefox";
    tooltip = false;
    on-click = "firefox";
    };

"custom/term" = {
    format = "term";
    on-click = "foot";
    tooltip = false;
    };

    "custom/code" = {
        format = "code";
        on-click = "codium";
        tooltip = false;
        };

    clock = {
      format = ''
        {:%H
        %M}
      '';
      tooltip-format = ''
        <big>{:%Y %B}</big>
        <tt><small>{calendar}</small></tt>
      '';
    };

pulseaudio = {
    pulseaudio = {
      scroll-step = 5;
      tooltip = true;
      tooltip-format = "{volume}";
      on-click = "pavucontrol";
      format = "{icon}";
      format-muted = "󰝟";
      format-icons = {
        default = ["" "" ""];
       };
     };
   };

    battery = {
      states = {
        good = 65;
        warning = 45;
        critical = 5;
     };
   }; 

  };
}