 ''
    $mainMod = SUPER
      source = ~/.config/hypr/monitors.conf
      

source = ~/.config/hypr/workspaces.conf


env = XCURSOR_SIZE,24

input {
    kb_layout = us
    kb_variant =
    kb_model =
    kb_options =
    kb_rules =

    follow_mouse = 1

    touchpad {
        natural_scroll = no
    }

    sensitivity = 0 # -1.0 - 1.0, 0 means no modification.
}

animations {
    enabled = true

    bezier = overshot, 0.05, 0.9, 0.1, 1.05
    bezier = smoothOut, 0.5, 0, 0.99, 0.99
    bezier = smoothIn, 0.5, -0.5, 0.68, 1.5
    bezier = eoe, 0.19, 1.0, 0.22, 1.0

    animation = windows, 1, 5, eoe, slide
    animation = windowsOut, 1, 3, eoe, slide
    animation = windowsIn, 1, 1, eoe, slide
    animation = windowsMove, 1, 4, eoe, slide
    animation = border, 1, 5, default
    animation = fade, 1, 5, smoothIn
    animation = fadeDim, 1, 5, smoothIn
    animation = workspaces, 1, 6, eoe, slidevert
}

dwindle {
    pseudotile = yes # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
    preserve_split = yes # you probably want this
}

master {
    new_is_master = false
    mfact = 0.5;
}

gestures {
    # See https://wiki.hyprland.org/Configuring/Variables/ for more
    workspace_swipe = on
}

decoration {
    # See https://wiki.hyprland.org/Configuring/Variables/ for more

    rounding = 0

    blur {
        enabled = true
        xray = false
        special = false
        new_optimizations = on
        
        size = 5
        passes = 4
        brightness = 1
        noise = 0.01
        contrast = 1
        
        #vibrancy = 0.1
        #vibrancy_darkness = 0
        
    }

    dim_special = 0.0

    drop_shadow = no
    shadow_range = 12
    shadow_render_power = 0
    col.shadow = rgba(282828ee)
}

general {

    gaps_in = 10
    gaps_out = 10
    border_size = 6
    col.active_border = rgba(8698c0ff) 90deg
    layout = dwindle
}

device:epic-mouse-v1 {
    sensitivity = -0.5
}


windowrule = float, title:^(Picture-in-Picture)$
windowrule = float, title:^(Picture in picture)$

windowrule = size 30% 30%, title:^(Picture-in-Picture)$
windowrule = size 30% 30%, title:^(Picture in picture)$
windowrulev2 = opacity 0.92 0.92,class:^(code)$
windowrule = move 69.9% 69.9%, title:^(Picture-in-Picture)$
windowrule = move 69.9% 69.9%, title:^(Picture in picture)$

windowrule = workspace special, title:^(Picture-in-Picture)$
windowrule = workspace special, title:^(Picture in picture)$
windowrulev2 = opacity 0.9 0.9,class:^(firefox)$
windowrulev2 = opacity 0.92 0.92,class:^(viewnior)$

bind = $mainMod, RETURN, exec, foot
bind = $mainMod, Q, killactive, 
bind = $mainMod, SPACE, togglefloating, 
bind = $mainMod SHIFT, F, fullscreen, 
bind = $mainMod, A, exec, rofi -show drun
bind = $mainMod SHIFT, S, exec, ~/.config/hypr/scripts/screenshot.sh area
bind = $mainMod SHIFT, X, exec, ~/.config/hypr/scripts/screenshot.sh output
bind = $mainMod, P, exec, rofi -show power-menu -modi power-menu:rofi-power-menu
binde = $mainMod, B, exec, ~/.config/hypr/scripts/change_brightness.sh up
binde = $mainMod SHIFT, B, exec, ~/.config/hypr/scripts/change_brightness.sh down
bind = $mainMod, S, exec, ~/.config/hypr/scripts/toggle_sticky_window.sh
bind = $mainMod, G, exec, gtklock
bind = $mainMod SHIFT, T, exec, ~/.config/hypr/scripts/change_theme.sh
bind = $mainMod, W, exec, waybar
bind = $mainMod SHIFT, w, exec, pkill waybar

# Pass keys into a virtual machine.
bind = $mainMod SHIFT, Escape, submap, passthru
submap = passthru
bind = $mainMod, Escape, submap, reset
submap = reset

binde = , XF86AudioRaiseVolume, exec, ~/.config/hypr/eww/scripts/set_output_volume 5%+
binde = , XF86AudioLowerVolume, exec, ~/.config/hypr/eww/scripts/set_output_volume 5%-
bind = , XF86AudioMute, exec, ~/.config/hypr/eww/scripts/toggle_output_mute

binde = , XF86MonBrightnessUp, exec, ~/.config/hypr/scripts/change_brightness.sh up
binde = , XF86MonBrightnessDown, exec, ~/.config/hypr/scripts/change_brightness.sh down

# Move focus with mainMod + arrow keys
bind = $mainMod, left, movefocus, l
bind = $mainMod, right, movefocus, r
bind = $mainMod, up, movefocus, u
bind = $mainMod, down, movefocus, d

# Move focus with mainMod + vim keys
bind = $mainMod, H, movefocus, l
bind = $mainMod, L, movefocus, r
bind = $mainMod, K, movefocus, u
bind = $mainMod, J, movefocus, d

# Move window with mainMod + arrow keys
bind = $mainMod SHIFT, left, movewindow, l
bind = $mainMod SHIFT, right, movewindow, r
bind = $mainMod SHIFT, up, movewindow, u
bind = $mainMod SHIFT, down, movewindow, d

# Move window with mainMod + vim keys
bind = $mainMod SHIFT, H, movewindow, l
bind = $mainMod SHIFT, L, movewindow, r
bind = $mainMod SHIFT, K, movewindow, u
bind = $mainMod SHIFT, J, movewindow, d

# Switch workspaces with mainMod + [0-9]
bind = $mainMod, 1, workspace, 1
bind = $mainMod, 2, workspace, 2
bind = $mainMod, 3, workspace, 3
bind = $mainMod, 4, workspace, 4
bind = $mainMod, 5, workspace, 5
bind = $mainMod, 6, workspace, 6
bind = $mainMod, 7, workspace, 7
bind = $mainMod, 8, workspace, 8
bind = $mainMod, 9, workspace, 9
bind = $mainMod, 0, workspace, 10

# Move active window to a workspace with mainMod + SHIFT + [0-9]
bind = $mainMod SHIFT, 1, movetoworkspace, 1
bind = $mainMod SHIFT, 2, movetoworkspace, 2
bind = $mainMod SHIFT, 3, movetoworkspace, 3
bind = $mainMod SHIFT, 4, movetoworkspace, 4
bind = $mainMod SHIFT, 5, movetoworkspace, 5
bind = $mainMod SHIFT, 6, movetoworkspace, 6
bind = $mainMod SHIFT, 7, movetoworkspace, 7
bind = $mainMod SHIFT, 8, movetoworkspace, 8
bind = $mainMod SHIFT, 9, movetoworkspace, 9
bind = $mainMod SHIFT, 0, movetoworkspace, 10

# Move/resize windows with mainMod + LMB/RMB and dragging
bindm = $mainMod, mouse:272, movewindow
bindm = $mainMod, mouse:273, resizewindow

# Autostart
exec-once = ~/.config/hypr/autostart.sh
exec-once = ~/.config/hypr/loop.sh
monitor=HDMI-A-1,addreserved,55,55,75,75
 ''