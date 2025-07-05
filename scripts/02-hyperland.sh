#!/bin/bash
echo "🌌 Installing Hyperland..."
git clone --recursive https://github.com/hyprwm/Hyprland.git hyperland
cd hyperland
make all
sudo make install
cd ..
echo "🧾 Creating Hyperland session..."
sudo tee /usr/share/wayland-sessions/hyperland.desktop > /dev/null <<EOF
[Desktop Entry]
Name=Hyperland
Exec=Hyperland
Type=Application
EOF
mkdir -p ~/.config/hypr
cp -r hyperland/example/hypr/* ~/.config/hypr/
