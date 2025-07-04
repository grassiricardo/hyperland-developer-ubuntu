#!/bin/bash
set -e
echo "🔧 Starting full Hyperland setup on Ubuntu..."
for script in scripts/*.sh; do
  echo "🚀 Running $script"
  bash "$script"
done
echo "✅ Installation completed successfully! Reboot the system and select 'Hyperland' na tela de login."
