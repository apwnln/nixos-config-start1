{ lib, pkgs, ... }:
with lib;
{

  options = {
    profile = {
      userName = mkOption {
        type = types.str;
        default = "gallon";
      };
      userEmail = mkOption {
        type = types.str;
        default = "h1090703848@gmail.com";
      };
      hashedPassword = mkOption {
        type = types.str;
        default = "$6$8/ZJ0jr/BWf4at92$PmRuEML2eiCHcRe/vuc54xgSkU.T7bO6ljUqczhkpw3kAv1mTl.PLMOhRuG.yIiEklJGwcHq3szit4PPkZaEM0";
      };
      browser = mkOption {
        type = types.str;
        default = "firefox";
      };
      terminal = mkOption {
        type = types.str;
        default = "kitty";
      };
      editor = mkOption {
        type = types.str;
        default = "nvim";
      };
      shell = mkOption {
        type = types.package;
        default = pkgs.fish;
      };
    };

    optional = {
      cosmic = lib.mkEnableOption "cosmic profile";
      hypr = lib.mkEnableOption "hyprland profile" // {
        default = true;
      };

      podman = lib.mkEnableOption "podman profile";

      terminal = {
        wezterm = lib.mkEnableOption "wezterm profile";
        kitty = lib.mkEnableOption "kitty profile";
        foot = lib.mkEnableOption "foot profile";
      };

      dev = {
        helix = lib.mkEnableOption "helix profile";

        go = lib.mkEnableOption "go profile";
        rust = lib.mkEnableOption "rust profile";
        zig = lib.mkEnableOption "zig profile";
        node = lib.mkEnableOption "node profile";
      };
    };
  };
}
