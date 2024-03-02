# 📁 My Dotfiles for Arch Linux

![2024-02-24T01:15:07,749589197-05:00](https://github.com/vague2k/.dotfiles-arch/assets/121782036/9773043c-3959-41ad-8f33-887878dbaa7e)
![2024-02-24T01:10:13,533739966-05:00](https://github.com/vague2k/.dotfiles-arch/assets/121782036/7f7278f8-6117-4ebe-a5c7-2f9ce42c8b4d)
![2024-02-24T01:11:02,249906469-05:00](https://github.com/vague2k/.dotfiles-arch/assets/121782036/c51f7114-4622-4007-a9df-02231bcffcf4)
![2024-02-24T01:13:11,502057343-05:00](https://github.com/vague2k/.dotfiles-arch/assets/121782036/8f323483-07fd-45be-9660-5677b4e7f397)

## Welcome to dependency hell.

This is amalgamation of different configs I've found around the internet and [r/unixporn](https://www.reddit.com/r/unixporn/) mixed with personal tastes. If you like watch you see feel free to copy something.

Most of the packages can be installed with pacman. A couple can be found in the AUR. If you can't a specific one on both or your confused on where to find it, do a quick google search, or put in an issue and I'll _try_ to guide you on how to install/use it.

## Notes worth mentioning before reading on.

- I run an AMD cpu, Nvidia GPU machine. Hyprland is known to be weird with nvidia. Some of my configuration tries to fix some issues in reference to hyprland+nvidia. If you're going to copy anything here, _your mileage may vary_.

- I manage my .dotfiles using a git bare repository + submodules for stuff that's shared across my machines.

- I'll be updating this often as there is still much left to customize, so give it a star if you ever wanna comeback and see where it's at!

- You can most definetly take some of the config files found here and use them in another OS _(with some modification of course)_. Stuff like my zsh config fits under this category. Experiment!

## 📦 Packages

#### Main

- Window Manager - [hyprland](https://hyprland.org/)
- Terminal - [kitty](https://github.com/kovidgoyal/kitty)
- Shell - [zsh](https://wiki.archlinux.org/title/zsh)
- Shell Theme - [starship](https://github.com/starship/starship)
- Colorscheme from wallpaper - [pywal](https://github.com/dylanaraps/pywal)
- Editor - [nvim/neovim](https://github.com/neovim/neovim)
- Logout/Display manager - [sddm](https://github.com/sddm/sddm)
- Sddm Theme - [reactionary](https://www.opendesktop.org/p/1376447)
- File manager - [thunar](https://archlinux.org/packages/extra/x86_64/thunar/)
- screenshots - [grimshot (AUR)](https://aur.archlinux.org/packages/grimshot)
- Image Viewer - [sxiv](https://wiki.archlinux.org/title/sxiv)
- Enable cursor theme and such - [nwg-look](https://github.com/nwg-piotr/nwg-look)
- Manages symlinks - [stow](https://www.gnu.org/software/stow/)

#### Hyprland specific

I try to keep all the tools hyprland uses to be as compatible as possible with wayland.

- App launcher - [rofi](https://github.com/davatorium/rofi)
- Wallpaper Daemon - [swww (AUR)](https://github.com/LGFae/swww)
- Notification Daemon - [mako](https://github.com/emersion/mako)
- Bar - [waybar](https://github.com/Alexays/Waybar)
- Logout Menu - [wlogout (AUR)](https://github.com/ArtsyMacaw/wlogout)

#### Stuff you might want

I use some of these in my config, omit them if you don't want them, or install them... _whatever you wanna do honestly idk lol_

- Better cd - [zoxide](https://github.com/ajeetdsouza/zoxide)
- Better ls - [eza](https://github.com/eza-community/eza)
- Better htop (System monitoring) - [bpytop](https://github.com/aristocratos/bpytop)
- TUI for git - [lazygit](https://github.com/jesseduffield/lazygit)

#### Show off

Because I have to show off my rice somehow

- [No explanation needed](https://github.com/dylanaraps/neofetch)
- [pipes.sh (AUR)](https://github.com/pipeseroni/pipes.sh)
- [cmatrix](https://github.com/abishekvashok/cmatrix)
- [Cava (AUR)](https://github.com/karlstav/cava)

## Install Script

_under construction_
