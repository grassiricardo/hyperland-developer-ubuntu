#!/bin/bash

echo "🌊 Building and installing Aquamarine manually..."

# Clone Aquamarine
git clone https://github.com/hyprwm/aquamarine.git
cd aquamarine

# Compile
meson setup build
ninja -C build

# Install
sudo ninja -C build install

# Cleanup
cd ..
rm -rf aquamarine

echo "✅ Aquamarine installed successfully!"