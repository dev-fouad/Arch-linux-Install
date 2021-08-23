#!/bin/bash

pacman -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
pacman -S zsh zsh-completions zsh-syntax-highlighting polkit polkit-gnome gnome-keyring neovim picom nitrogen lynx man-db ntfs-3g exfat-utils unrar unzip xclip xcape xdotool htop curl unclutter atool dunst libnotify bc sxiv mpd mpc mpv ncmpcpp calcurse newsboat maim mediainfo zathura zathura-pdf-mupdf poppler ffmpeg maim fzf exa python-pynvim thunar thunar-archive-plugin thunar-media-tags-plugin thunar-volman raw-thumbnailer ffmpegthumbnailer tumbler redshift ranger ueberzug lxappearance qt5ct papirus-icon-theme noto-fonts-emoji awesome-terminal-fonts gnome-themes-extra gnome-disk-utility geoclue geocode-glib geany geany-plugins xarchiver firefox-developer-edition keepassxc wget uget 
pacman -S virt-manager virt-viewer qemu edk2-ovmf bridge-utils dnsmasq vde2 openbsd-netcat iptables-nft

sudo systemctl enable libvirtd.service
sudo usermod -aG libvirt fouad

systemctl enable lightdm

chsh -s $(which zsh)
