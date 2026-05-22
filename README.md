# 💫 Complete Custom Desktop Environment

  A high-performance, beautiful, and unified development environment configuration layout built for Hyprland on Fedora. Featuring an ultra-smooth keyboard driven experience with beutiful visuals.
---

## 🎨 System Profile & Integrated Applications

  Your installation packages and custom styles span these explicit visual layers:

    | Component Category | Target Monitored Subdirectories | Feature Set |
    | :--- | :--- | :--- |
    | **Window Compositor** | `hypr`, `swaync`, `wlogout`, `btop` | Window behavior rules, custom fluid keybind layers, notifications, and resource monitoring |
    | **Visual Theming Engine** | `wallust`, `gtk-3.0`, `gtk-4.0`, `Kvantum`, `qt5ct`, `qt6ct`, `xsettingsd` | Dynamic hardware-rendered color management, GTK UI structures, and QT font consistency scaling |
    | **Terminal Workspace** | `kitty`, `wezterm`, `alacritty`, `ghostty`, `fastfetch` | GPU-accelerated terminal nodes and system information presentation dashboards |
    | **Core Productivity Editors** | `nvim`, `astro` | Preinstalled with telescope, undo-tree, treesitter, Lazy, and some LSP |
    | **UI Launcher Panels** | `waybar`, `rofi` | Custom dynamic top menus, system resource trackers, and application launch grids |
    | **File Systems & Media** | `thunar`, `cava`, `mpv` | File manager, cava is just for style, and micro media backends for something like youtube-TUI |
    | **NWG Landscape Monitor** | `nwg-displays`, `nwg-drawer`, `nwg-look`, `nwg-panel` | Display layouts, custom overlay drawers, look-and-feel themes, and GTK-driven layout components |

---

## 🚀 Automated Native Local Installation

  To install this entire configuration to your computer, clone the project root to your local user workspace and execute the standalone installer script:
  ```bash
    # 1. Clone the environment architecture safely into your home directory
    git clone https://github.com/yourusername/your-dotfiles-repo.git ~/dotfiles

    # 2. Change your path context into the repository container
    cd ~/dotfiles

    # 3. Mark the standalone local installation script as executable
    chmod +x install.sh

    # 4. Fire the deployment pipeline script
    ./install.sh
