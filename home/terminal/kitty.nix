{ ... }:

{
  programs = {
    kitty = {
      enable = true;
      environment = { };
      keybindings = { };
      font.name = "jetbrains mono nerd font";
      font.size = 16;
      settings = {
        italic_font = "auto";
        bold_italic_font = "auto";
        mouse_hide_wait = 2;
        cursor_shape = "block";
        url_color = "#0087bd";
        url_style = "dotted";
        confirm_os_window_close = 0;
        background_opacity = "0.65";
        hide_window_decorations = "yes";
      };
      extraConfig = ''
        ## Polar night (dark -> bright)
        #nord0 #2e3440
        #nord1 #3b4252
        #nord2 #434c5e
        #nord3 #4c566a
        #
        ## Snow storm (dark -> bright)
        #nord4 #d8dee9
        #nord5 #e5e9f0
        #nord6 #eceff4
        #
        ## Frost
        #nord7 #8fbcbb
        #nord8 #88c0d0
        #nord9 #81a1c1
        #nord10 #5e81ac
        #
        ## Aurora
        #nord11 #bf616a
        #nord12 #d08770
        #nord13 #ebcb8b
        #nord14 #a3be8c
        #nord15 #b48ead


        # Dark
        foreground            #d8dee9
        background            #2e3440
        selection_foreground  #d8dee9
        selection_background  #3b4252

        mark1_foreground #d08770
        mark2_foreground #d08770
        mark3_foreground #d08770

        url_color #e5e9f0

        # Cursor colors
        cursor            #d8dee9
        cursor_text_color #4c566a

        # Tab bar colors
        active_tab_foreground   #e5e9f0
        active_tab_background   #4c566a
        inactive_tab_foreground #d8dee9
        inactive_tab_background #3b4252

        # black (nord1 / nord3)
        color0  #3b4252
        color8  #4c566a

        # red (nord11)
        color1  #bf616a
        color9  #bf616a

        # green (nord14)
        color2  #a3be8c
        color10 #a3be8c

        # yellow (nord13)
        color3  #ebcb8b
        color11 #ebcb8b

        # blue (nord9)
        color4  #81a1c1
        color12 #81a1c1

        # magenta (nord15)
        color5  #b48ead
        color13 #b48ead

        # cyan (nord8)
        color6  #88c0d0
        color14 #88c0d0

        # white (nord5)
        color7  #e5e9f0
        color15 #e5e9f0
      '';
    };
  };
}
