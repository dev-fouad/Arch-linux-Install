#!/bin/bash

pacman -S --noconfirm lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
pacman -S --noconfirm zsh zsh-completions zsh-syntax-highlighting polkit polkit-gnome gnome-keyring neovim picom nitrogen lynx man-db ntfs-3g exfat-utils unrar unzip xclip xcape xdotool htop curl unclutter atool dunst libnotify bc sxiv mpd mpc mpv ncmpcpp calcurse newsboat maim mediainfo zathura zathura-pdf-mupdf poppler ffmpeg maim fzf exa python-pynvim thunar thunar-archive-plugin thunar-media-tags-plugin thunar-volman raw-thumbnailer ffmpegthumbnailer tumbler ranger ueberzug lxappearance qt5ct papirus-icon-theme ttf-ubuntu-font-family ttf-joypixels noto-fonts-emoji awesome-terminal-fonts gnome-themes-extra redshift geoclue geocode-glib bat alacritty terminator gnome-disk-utility geany geany-plugins xarchiver firefox thunderbird keepassxc wget uget p7zip bzip2 pavucontrol 
#pacman -S --noconfirm virt-manager virt-viewer qemu edk2-ovmf bridge-utils dnsmasq vde2 openbsd-netcat iptables-nft

#sudo systemctl enable libvirtd.service
#sudo usermod -aG libvirt fouad

chsh -s $(which zsh)

#systemctl enable lightdm
