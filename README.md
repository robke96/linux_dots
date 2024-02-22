# Dotfiles for Fedora 39 Linux with KDE (Wayland)

![Fedora Badge](https://img.shields.io/badge/Fedora-51A2DA?logo=fedora&logoColor=fff&style=for-the-badge) 
![KDE Badge](https://img.shields.io/badge/KDE-1D99F3?logo=kde&logoColor=fff&style=for-the-badge)

## Screenshots

<img src="https://i.imgur.com/OYaxfQE.jpeg">

## Features

- **Shell:** Zsh with [Oh My Zsh](https://ohmyz.sh/)
- **Terminal:** [Kitty](https://github.com/kovidgoyal/kitty)
- **Editor:** [VSCodium](https://vscodium.com/)
- **Theme:** 
    - [Window Decorations - Breezemite Dark](https://store.kde.org/p/1169286)
    - [Icons - Tela Dark](https://store.kde.org/p/1279924)

## Configs

- **Oh My Zsh:** 
    - [.zshrc file](./.zshrc)
    - To work you need these plugins:
        - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
        - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
        - [zsh-autocomplete](https://gist.github.com/n1snt/454b879b8f0b7995740ae04c5fb5b7df#install-plugins)
        - [NVM - Node Version Manager (optional)](https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating)
        - [Bun (optional)](https://bun.sh/)

- **VSCodium:**
    - [settings.json](./codium/settings.json)
    - [extensions.md](./codium/extensions.md)
    
- **Kitty:**
    - [kitty.conf](./kitty/kitty.conf)
    - [JetBrains Font Required!](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip)

## Scripts

- **gpufan.sh:** 
    - Couldn't find any gpu fan control software for wayland and nvidia, so decided to -  make my own script. 
    - Make sure you have installed nvidia-smi and nvidia-settings
    - Give permissions for script
    ```bash
        chmod +x ./gpufan.sh
    ```
    - Add script on startup launch and you good to go.

- **fixplasma.sh** 
    - Plasma 5.27 on my system often freeze Plasma Shell, so sometimes I restart it with script.
