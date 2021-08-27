#!/bin/bash
sudo pacman -S --noconfirm rust
cd .config
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
