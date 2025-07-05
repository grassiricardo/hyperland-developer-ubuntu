#!/bin/bash

echo "🌊 Building and installing Aquamarine manually..."

# Clonar o repositório Aquamarine
git clone https://github.com/hyprwm/aquamarine.git
cd aquamarine || exit 1

# Compilar e instalar
meson setup build
ninja -C build
sudo ninja -C build install

# Limpeza
cd ..
rm -rf aquamarine

echo "✅ Aquamarine installed successfully!"