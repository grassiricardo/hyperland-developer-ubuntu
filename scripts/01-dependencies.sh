#!/bin/bash
echo "🔧 Installing essential dependencies..."
sudo apt update && sudo apt upgrade -y
sudo apt install -y \
  build-essential cmake meson ninja-build git curl wget unzip \
  libwayland-dev libxkbcommon-dev libxcb1-dev libxcb-keysyms1-dev \
  libpixman-1-dev libinput-dev libx11-dev \
  libglvnd-dev libegl-dev libdrm-dev \
  libxcb-composite0-dev libxcb-ewmh-dev \
  libxcb-icccm4-dev libxcb-image0-dev \
  libxcb-randr0-dev libxcb-render-util0-dev \
  libxcb-xinerama0-dev libxcb-xinput-dev \
  libxcb-xkb-dev libxkbcommon-x11-dev \
  wayland-protocols xwayland wl-clipboard \
  swaybg mako waybar alacritty wofi \
  xdg-desktop-portal-wlr zsh snapd gpg apt-transport-https software-properties-common
