#!/bin/bash
echo "📦 Installing essential applications..."

# Oh My Zsh
echo "🌀 Installing Oh My Zsh..."
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Slack
echo "💬 Installing Slack..."
wget -O slack.deb "https://downloads.slack-edge.com/linux_releases/slack-desktop-4.38.125-amd64.deb"
sudo apt install -y ./slack.deb
rm slack.deb

# WhatsApp (WhatsDesk)
echo "💬 Installing WhatsDesk (WhatsApp Web)..."
wget -O whatsdesk.deb "https://github.com/mawie81/whatsdesk/releases/download/v0.3.0/whatsdesk_0.3.0_amd64.deb"
sudo apt install -y ./whatsdesk.deb
rm whatsdesk.deb

# VS Code
echo "🖥️ Installing Visual Studio Code..."
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
rm microsoft.gpg
sudo apt update
sudo apt install -y code

# Chrome
echo "🌐 Installing Google Chrome..."
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# Spotify (Snap)
echo "🎵 Installing Spotify via Snap..."
sudo snap install spotify

# ChatGPT Desktop
echo "🤖 Installing ChatGPT Desktop..."
wget -O chatgpt.deb "https://github.com/lencx/ChatGPT/releases/latest/download/chatgpt-linux.deb"
sudo apt install -y ./chatgpt.deb
rm chatgpt.deb

# Thunar
echo "🗂️ Installing Thunar e complementos..."
sudo apt install -y thunar tumbler thunar-archive-plugin


# Thunderbird
echo "📨 Installing Thunderbird (gerenciador de e-mails)..."
sudo apt install -y thunderbird


# ASDF Version Manager
echo "🛠️ Installing ASDF (gerenciador de versões)..."
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0

# Adiciona ao .zshrc
echo -e '\n. "$HOME/.asdf/asdf.sh"' >> ~/.zshrc
echo '. "$HOME/.asdf/completions/asdf.bash"' >> ~/.zshrc


# Plugins padrão do ASDF
echo "➕ Adicionando plugins padrão ao ASDF..."
. "$HOME/.asdf/asdf.sh"
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin-add python https://github.com/asdf-community/asdf-python.git
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
