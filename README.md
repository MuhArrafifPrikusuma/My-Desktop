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
---
```
## 🗄️ Safe Automated Backup Engine
You don't have to worry about losing your personal settings. When ./install.sh starts running, it checks your existing local machine directories for file overlap. If it detects pre-existing settings for components like Hyprland, Waybar, or Neovim, it handles them gracefully by creating a secure backup index, ⚠️ I recommend creating backup by yourself for safety reasons in case the install script failed to create a backup.

## 💎 Custom Easing Configurations (Anti-Flicker)
To keep your display rendering smoothly on high-refresh laptop panels, this environment maps standard window border transformations across a dedicated continuous linear curve. This prevents frame-rate desynchronization and stops border flickering dead in its tracks.

The parameters reside securely inside your local ~/.config/hypr/UserConfigs/UserAnimations.conf block:

        animations {
          enabled = true
    
          # Establish a perfect linear transition vector
          bezier = borderFluid, 0.0, 0.0, 1.0, 1.0

          # Distribute border translations over an ultra-smooth 150-frame matrix
          animation = border, 1, 15, borderFluid
          animation = borderangle, 1, 150, borderFluid, loop 
      }
Note: There are some weird things happening when you turn off your rendering engine and turn it back on sometimes the borders starts to flicker and if this happend just disable animations and then reboot your system
