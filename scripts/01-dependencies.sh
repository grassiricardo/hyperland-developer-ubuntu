#!/bin/bash

echo "🔧 Installing essential dependencies..."

# Apt packages
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
  swaybg waybar alacritty wofi \
  xdg-desktop-portal-wlr zsh snapd gpg apt-transport-https software-properties-common \
  flatpak

# Flatpak setup (for mako and Wayland notification support)
echo "📦 Setting up Flatpak and installing Mako via Flathub..."
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Required runtime for notifications on Wayland
sudo flatpak install -y flathub org.freedesktop.Notifications

# Mako notification daemon
sudo flatpak install -y flathub dev.geopjr.Mako