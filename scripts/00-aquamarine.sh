#!/bin/bash

echo "🌊 Building and installing Aquamarine manually..."

# Clone Aquamarine
git clone https://github.com/hyprwm/aquamarine.git
cd aquamarine/aquamarine || exit 1

# Build and install
meson setup build
ninja -C build
sudo ninja -C build install

# Cleanup
cd ../../
rm -rf aquamarine

echo "✅ Aquamarine installed successfully!"