#!/bin/bash

echo "🔄 Removing any existing local copy..."
rm -rf hyperland-developer-ubuntu

echo "🔄 Cloning Hyperland setup repo..."
git clone https://github.com/grassiricardo/hyperland-developer-ubuntu.git
cd hyperland-developer-ubuntu

echo "🔧 Starting full setup..."
chmod +x setup.sh
./setup.sh