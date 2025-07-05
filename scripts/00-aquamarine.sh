#!/bin/bash

echo "🌊 Compilando e instalando o Aquamarine..."

# Clonar e instalar o hyprwayland-scanner (dependência do Aquamarine)
git clone https://github.com/hyprwm/hyprwayland-scanner.git
cd hyprwayland-scanner
make all
sudo make install
cd ..

# Clonar e compilar o Aquamarine
git clone https://github.com/Aylur/Aquamarine.git aquamarine
cd aquamarine

# Compilação padrão CMake
cmake -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build
sudo cmake --install build

echo "✅ Aquamarine instalado com sucesso!"