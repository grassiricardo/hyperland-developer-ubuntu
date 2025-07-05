#!/bin/bash

echo "🌊 Compilando e instalando o Aquamarine..."

# Instala dependência hyprwayland-scanner
git clone --depth=1 https://github.com/hyprwm/hyprwayland-scanner.git
cd hyprwayland-scanner
cmake -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build
sudo cmake --install build
cd ..

# Clona e instala Aquamarine
git clone --depth=1 https://github.com/Aylur/Aquamarine.git aquamarine
cd aquamarine
cmake -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build
sudo cmake --install build

echo "✅ Aquamarine instalado com sucesso!"