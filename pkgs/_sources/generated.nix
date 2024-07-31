# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  catppuccin-fcitx5 = {
    pname = "catppuccin-fcitx5";
    version = "ce244cfdf43a648d984719fdfd1d60aab09f5c97";
    src = fetchFromGitHub {
      owner = "catppuccin";
      repo = "fcitx5";
      rev = "ce244cfdf43a648d984719fdfd1d60aab09f5c97";
      fetchSubmodules = false;
      sha256 = "sha256-uFaCbyrEjv4oiKUzLVFzw+UY54/h7wh2cntqeyYwGps=";
    };
    date = "2022-10-05";
  };
  catppuccin-fish = {
    pname = "catppuccin-fish";
    version = "a3b9eb5eaf2171ba1359fe98f20d226c016568cf";
    src = fetchFromGitHub {
      owner = "catppuccin";
      repo = "fish";
      rev = "a3b9eb5eaf2171ba1359fe98f20d226c016568cf";
      fetchSubmodules = false;
      sha256 = "sha256-shQxlyoauXJACoZWtRUbRMxmm10R8vOigXwjxBhG8ng=";
    };
    date = "2024-05-14";
  };
  catppuccin-hyprland = {
    pname = "catppuccin-hyprland";
    version = "c388ac55563ddeea0afe9df79d4bfff0096b146b";
    src = fetchFromGitHub {
      owner = "catppuccin";
      repo = "hyprland";
      rev = "c388ac55563ddeea0afe9df79d4bfff0096b146b";
      fetchSubmodules = false;
      sha256 = "sha256-xSa/z0Pu+ioZ0gFH9qSo9P94NPkEMovstm1avJ7rvzM=";
    };
    date = "2024-06-19";
  };
  fcitx5-pinyin-moegirl = {
    pname = "fcitx5-pinyin-moegirl";
    version = "20240709";
    src = fetchurl {
      url = "https://github.com/outloudvi/mw2fcitx/releases/download/20240709/moegirl.dict";
      sha256 = "sha256-1BNfyMM7T19glWsB9oOOMHEWc+SE/qrxx5rsAz386Os=";
    };
  };
  fcitx5-pinyin-zhwiki = {
    pname = "fcitx5-pinyin-zhwiki";
    version = "20240426";
    src = fetchurl {
      url = "https://github.com/felixonmars/fcitx5-pinyin-zhwiki/releases/download/0.2.4/zhwiki-20240426.dict.yaml";
      sha256 = "sha256-CcXyC/vnplJleDlhpgiYhwcA4hHjzqt5K1FMDjmamqc=";
    };
  };
  librime-charcode = {
    pname = "librime-charcode";
    version = "55e7f563e999802d41a13ba02657c1be4b2011b4";
    src = fetchFromGitHub {
      owner = "rime";
      repo = "librime-charcode";
      rev = "55e7f563e999802d41a13ba02657c1be4b2011b4";
      fetchSubmodules = false;
      sha256 = "sha256-KfKkpph+2ChQpkkGKubmpg/18uPX9qUHTqJT1PSGorI=";
    };
    date = "2024-03-19";
  };
  librime-lua = {
    pname = "librime-lua";
    version = "7be6974b6d81c116bba39f6707dc640f6636fa4e";
    src = fetchFromGitHub {
      owner = "hchunhui";
      repo = "librime-lua";
      rev = "7be6974b6d81c116bba39f6707dc640f6636fa4e";
      fetchSubmodules = false;
      sha256 = "sha256-jsrnAFE99d0U0LdddTL7G1p416qJfSNR935TZFH3Swk=";
    };
    date = "2024-05-19";
  };
  librime-octagram = {
    pname = "librime-octagram";
    version = "bd12863f45fbbd5c7db06d5ec8be8987b10253bf";
    src = fetchFromGitHub {
      owner = "lotem";
      repo = "librime-octagram";
      rev = "bd12863f45fbbd5c7db06d5ec8be8987b10253bf";
      fetchSubmodules = false;
      sha256 = "sha256-77g72tee4ahNcu3hfW1Okqr9z8Y6WrPgUhw316O72Ng=";
    };
    date = "2024-02-05";
  };
  librime-proto = {
    pname = "librime-proto";
    version = "657a923cd4c333e681dc943e6894e6f6d42d25b4";
    src = fetchFromGitHub {
      owner = "lotem";
      repo = "librime-proto";
      rev = "657a923cd4c333e681dc943e6894e6f6d42d25b4";
      fetchSubmodules = false;
      sha256 = "sha256-HdypebfmzreSdEQBwbvRG6sJZPASP+e8Tew+GrMnpOQ=";
    };
    date = "2023-10-17";
  };
  rime-ice = {
    pname = "rime-ice";
    version = "bf863a9edb8ffca653b13bc3c1c8e1ee71c9a051";
    src = fetchFromGitHub {
      owner = "iDvel";
      repo = "rime-ice";
      rev = "bf863a9edb8ffca653b13bc3c1c8e1ee71c9a051";
      fetchSubmodules = false;
      sha256 = "sha256-XlgzpwPnyUzPY7LuohYDTd/sDr/Zeu612CJtmRQsS7w=";
    };
    date = "2024-07-28";
  };
}
