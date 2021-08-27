#!/bin/bash
cd .config
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
