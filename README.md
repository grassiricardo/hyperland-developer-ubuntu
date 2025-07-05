# 🌀 Hyperland Ubuntu Setup

This is a full setup script to install and configure a customized **Hyperland** environment on **Ubuntu**. It includes all dependencies, a beautiful theme, essential tools, developer applications, and a fully personalized terminal and desktop experience.

---

## 📦 What’s Included

### 🔧 Core Setup

- Compiles and installs **Hyperland** from source
- Configures session for display manager (Wayland compatible)
- Installs base tools: `waybar`, `wofi`, `alacritty`, `mako`, `swaybg`, `xdg-desktop-portal-wlr`

---

### 🎨 Theming and UI

- **GTK Theme:** [Catppuccin Mocha – Blue Dark](https://github.com/catppuccin/gtk)
- **Icon Pack:** [Papirus Icons](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
- **Font:** JetBrains Mono Nerd Font (patched for terminal icons)
- Applies theme for both GTK3 and GTK4 apps

---

### 💻 Applications Installed

| Category           | Application                  |
|--------------------|------------------------------|
| Terminal           | Alacritty + Zsh + Oh My Zsh  |
| App Launcher       | Wofi                          |
| Status Bar         | Waybar                        |
| Notifications      | Mako                          |
| File Manager       | Thunar + thumbnail support    |
| Code Editor        | Visual Studio Code            |
| Web Browser        | Google Chrome                 |
| Communication      | Slack, WhatsApp (WhatsDesk)   |
| Music              | Spotify (Snap)                |
| AI Assistant       | ChatGPT Desktop (by lencx)    |
| Email Client       | Thunderbird                   |
| Version Manager    | ASDF (with Node.js, Python, Ruby plugins preinstalled) |

---

### 🧰 Developer Ready

✅ Includes [ASDF Version Manager](https://github.com/asdf-vm/asdf) with:

- Node.js plugin
- Python plugin
- Ruby plugin

---

## 🚀 How to Use

### 📥 One-liner Install (Recommended)

You can install everything with a single terminal command:

```bash
wget -qO- https://raw.githubusercontent.com/grassiricardo/hyperland-developer-ubuntu/main/install.sh | bash