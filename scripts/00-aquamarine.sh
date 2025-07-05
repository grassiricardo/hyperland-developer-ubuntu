#!/bin/bash

echo "🌊 Building and installing Aquamarine manually..."

# Clone latest aquamarine
git clone https://github.com/hyprwm/aquamarine.git
cd aquamarine || exit 1

# Use official build script provided in repo
chmod +x build.sh
./build.sh

# Install (optional if build.sh already installs)
sudo ninja -C build install

# Cleanup
cd ..
rm -rf aquamarine

echo "✅ Aquamarine installed successfully!"