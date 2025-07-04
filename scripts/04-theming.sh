#!/bin/bash
echo "🎨 Aplicando personalização visual..."

# Tema Catppuccin
git clone https://github.com/catppuccin/gtk.git ~/catppuccin-gtk
cd ~/catppuccin-gtk
meson setup build --prefix=$HOME/.local
meson install -C build
cd ..
mkdir -p ~/.themes
cp -r ~/.local/share/themes/* ~/.themes/

# Papirus Icons
sudo add-apt-repository -y ppa:papirus/papirus
sudo apt update
sudo apt install -y papirus-icon-theme

# Nerd Font
mkdir -p ~/.local/share/fonts
wget -O jetbrains.zip https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
unzip jetbrains.zip -d ~/.local/share/fonts/JetBrainsMono
rm jetbrains.zip
fc-cache -fv

# GTK Settings
mkdir -p ~/.config/gtk-3.0
cat > ~/.config/gtk-3.0/settings.ini <<EOF
[Settings]
gtk-theme-name=Catppuccin-Mocha-Standard-Blue-Dark
gtk-icon-theme-name=Papirus
gtk-font-name=JetBrainsMono Nerd Font 10
gtk-cursor-theme-name=Adwaita
EOF

mkdir -p ~/.config/gtk-4.0
cp ~/.config/gtk-3.0/settings.ini ~/.config/gtk-4.0/settings.ini
