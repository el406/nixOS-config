{
    bind = [
      "$mod SHIFT, enter, exec, $terminal"
      "$mod SHIFT, C, killactive,"
      "$mod SHIFT, Q, exit,"
      "$mod,       F, togglefloating,"
      "$mod,       D, exec, wofi --show drun"
      "$mod,       P, pin,"
      "$mod,       J, togglesplit,"
      "$mod,       E, exec, bemoji -cn"
      "$mod SHIFT, B, exec, pkill -SIGUSR1 waybar"
      ", Print, exec, grimblast --notify --freeze copysave area"

      # Moving focus
      "$mod, h, movefocus, l"
      "$mod, l, movefocus, r"
      "$mod, k, movefocus, u"
      "$mod, j, movefocus, d"

      # Moving windows
      "$mod SHIFT, h,  swapwindow, l"
      "$mod SHIFT, l, swapwindow, r"
      "$mod SHIFT, k,    swapwindow, u"
      "$mod SHIFT, j,  swapwindow, d"

      # Resizeing windows                   X  Y
      "$mod CTRL, h,  resizeactive, -60 0"
      "$mod CTRL, l, resizeactive,  60 0"
      "$mod CTRL, k,    resizeactive,  0 -60"
      "$mod CTRL, j,  resizeactive,  0  60"

      # Switching workspaces
      "$mod, 1, workspace, 1"
      "$mod, 2, workspace, 2"
      "$mod, 3, workspace, 3"
      "$mod, 4, workspace, 4"
      "$mod, 5, workspace, 5"
      "$mod, 6, workspace, 6"
      "$mod, 7, workspace, 7"
      "$mod, 8, workspace, 8"
      "$mod, 9, workspace, 9"
      "$mod, 0, workspace, 10"

       # Moving windows to workspaces
      "$mod SHIFT, 1, movetoworkspacesilent, 1"
      "$mod SHIFT, 2, movetoworkspacesilent, 2"
      "$mod SHIFT, 3, movetoworkspacesilent, 3"
      "$mod SHIFT, 4, movetoworkspacesilent, 4"
      "$mod SHIFT, 5, movetoworkspacesilent, 5"
      "$mod SHIFT, 6, movetoworkspacesilent, 6"
      "$mod SHIFT, 7, movetoworkspacesilent, 7"
      "$mod SHIFT, 8, movetoworkspacesilent, 8"
      "$mod SHIFT, 9, movetoworkspacesilent, 9"
      "$mod SHIFT, 0, movetoworkspacesilent, 10"

      ];

       # Laptop multimedia keys for volume and LCD brightness
    bindel = [
      ",XF86AudioRaiseVolume,  exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
      ",XF86AudioLowerVolume,  exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
      ",XF86AudioMute,         exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
      ",XF86AudioMicMute,      exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
    ];

}
