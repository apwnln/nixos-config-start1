{ lib, ... }:
{
  wayland.windowManager.hyprland.settings = {
    # layer rules
    layerrule =
      let
        toRegex = list:
          let
            elements = lib.concatStringsSep "|" list;
          in
          "^(${elements})$";

        ignorealpha = [
          # ags
          "dock[0-9]"
          "notifications[0-9]"
          "quicksettings"
          "dashboard"

          "anyrun"
        ];

        layers = ignorealpha ++ [ "bar[0-9]" "gtk-layer-shell" "logout_dialog" ];
      in
      [
        "blur, ${toRegex layers}"
        "xray 1, ${toRegex ["bar[0-9]" "gtk-layer-shell"]}"
        "ignorealpha 0.2, ${toRegex ["bar[0-9]" "gtk-layer-shell"]}"
        "ignorealpha 0.5, ${toRegex ["anyrun"]}"
      ];

    # window rules
    # use `hyprctl clients` to find out the class and title of a window
    windowrulev2 =
      let
        float-center-apps =
          "^(one.alynx.showmethekey|pavucontrol|org.gnome.Loupe|org.gnome.Nautilus|org.kde.kdeconnect.daemon|org.kde.kdeconnect-indicator|org.kde.kdeconnect.app|.blueman-manager-wrapped|nm-applet|nm-connection-editor|imv|mpv)$";
        media-apps =
          "^(swappy|com.github.neithern.g4music|com.gitee.gmg137.NeteaseCloudMusicGtk4|QQ|thunderbird|Slack|org.telegram.desktop|cinny|discord|wechat)$";
      in
      [
        # telegram media viewer
        "float, title:^(Media viewer)$"

        # prismlauncher
        "workspace 5,class:^(org.prismlauncher.PrismLauncher)"
        "float,class:^(org.prismlauncher.PrismLauncher)"
        "fullscreen,class:^(Minecraft.*)"

        # make Firefox PiP window floating and sticky
        "float, title:^(Picture-in-Picture)$"
        "pin, title:^(Picture-in-Picture)$"

        # throw sharing indicators away
        "workspace special silent, title:^(Firefox — Sharing Indicator)$"
        "workspace special silent, title:^(.*is sharing (your screen|a window)\.)$"

        # idle inhibit while watching videos
        "idleinhibit focus, class:^(mpv|.+exe)$"
        "idleinhibit focus, class:^(firefox)$, title:^(.*YouTube.*)$"
        "idleinhibit fullscreen, class:^(firefox)$"

        "dimaround, class:^(xdg-desktop-portal-gtk|polkit-gnome-authentication-agent-1)$"

        "rounding 0, xwayland:1"
        # "center, class:^(jetbrains-rustrover)$, title:^(Confirm Exit|Open File or Project|Settings|splash)$"
        # "size 80% 80%, class:^(jetbrains-rustrover)$, title:^(splash|Open File or Project|Settings)$"
        "noinitialfocus, class:^jetbrains-(?|toolbox), floating:1"

        "center, class:^(Code)$, title:^(Open Folder|Open File)$"
        "size 60% 60%, class:^(Code)$, title:^(Open Folder|Open File)$"

        "opacity 0.80, class:^(Code|firefox|kitty|foot|com.obsproject.Studio)$"
        "opacity 0.80 0.70, class:${float-center-apps}"
        "float, class:${float-center-apps}"
        "center, class:${float-center-apps}"
        "size 60% 60%, class:${float-center-apps}"
        "float, class:${media-apps}"
        "center, class:${media-apps}"
        "size 85% 85%, class:${media-apps}"
        "opacity 0.80 0.70, floating:1"
        "float, class:^(com.github.Aylur.ags)$"
        "float, class:^(org.rgs.*)$"
      ];

    workspace = builtins.concatLists
      (builtins.genList
        (
          x:
          let
            ws =
              let
                c = (x + 1) / 10;
              in
              builtins.toString (x + 1 - (c * 10));
          in
          [
            "DP-3, ${ws}"
          ]
        )
        5) ++ [
      "eDP-1, 1"
    ];
  };
}

