#!/bin/bash

echo "🌊 Compilando e instalando o Aquamarine..."

# Clonar o repositório oficial do Aquamarine
git clone https://github.com/hyprwm/aquamarine.git
cd aquamarine || exit 1

# Criar diretório de build
mkdir -p build
cd build || exit 1

# Configurar o projeto com CMake
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr ..

# Compilar o projeto
make -j"$(nproc)"

# Instalar o Aquamarine
sudo make install

# Voltar ao diretório anterior e remover o repositório clonado
cd ../..
rm -rf aquamarine

echo "✅ Aquamarine instalado com sucesso!"