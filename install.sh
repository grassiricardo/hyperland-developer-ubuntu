#!/bin/bash

echo "🔄 Cloning Hyperland setup repo..."
git clone https://github.com/grassiricardo/hyperland-ubuntu-setup.git
cd hyperland-ubuntu-setup

echo "🔧 Starting full setup..."
chmod +x setup.sh
./setup.sh
