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
  flatpak dunst

# Hyprland additional dependencies
sudo apt install -y \
  libx11-xcb-dev libxcb-res0-dev libxcb-xfixes0-dev libxcb-shape0-dev \
  libxcb-util-dev libxcb-cursor-dev libxcb-damage0-dev \
  libegl1-mesa-dev libgles2-mesa-dev libvulkan-dev \
  libinput-bin libinput10 libinput-dev \
  libxcb-present-dev libxcb-render0-dev libxcb-glx0-dev \
  libudev-dev libseat-dev libsystemd-dev \
  libxrandr-dev libxcb-icccm4-dev libxcb-xkb-dev \
  libxcb-xinput-dev libxcb-shm0-dev libpango1.0-dev \
  libavutil-dev libavcodec-dev libavformat-dev \
  libdbus-1-dev libharfbuzz-dev libswscale-dev \
  libspa-0.2-dev pipewire-audio-client-libraries \
  libinih-dev libdisplay-info-dev libliftoff-dev libxext-dev \
  libxrender-dev libxcursor-dev libxdamage-dev \
  libpcre2-dev libxcb-image0-dev libxkbregistry-dev \
  libvulkan-volk-dev libglvnd-dev libxcomposite-dev \
  libxft-dev libxcb-util0-dev libxfixes-dev \
  extra-cmake-modules pkg-config

# Optional dependencies required by Hyprland build system
echo "📦 Installing udis86 and aquamarine (if available)..."
sudo apt install -y libudis86-dev libaquamarine-dev || echo "⚠️ Some packages like 'libaquamarine-dev' may need manual build if not found."

# Flatpak setup (optional for future packages like Spotify or VSCode)
echo "📦 Setting up Flatpak support..."
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "✅ Dependencies and base setup completed successfully!"