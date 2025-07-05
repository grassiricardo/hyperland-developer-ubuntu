#!/bin/bash

echo "🌊 Compilando e instalando o Aquamarine..."

# Dependência obrigatória
echo "📦 Instalando dependência pugixml-dev..."
sudo apt install -y libpugixml-dev

# Instala hyprwayland-scanner
git clone --depth=1 https://github.com/hyprwm/hyprwayland-scanner.git
cd hyprwayland-scanner
cmake -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build
sudo cmake --install build
cd ..

# Clona e instala aquamarine
GIT_TERMINAL_PROMPT=0 git clone --depth=1 https://github.com/archcraft-os/aquamarine.git aquamarine
cd aquamarine
cmake -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build
sudo cmake --install build