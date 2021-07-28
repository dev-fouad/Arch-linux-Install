#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

#sudo reflector -c Germany -a 12 --sort rate --save /etc/pacman.d/mirrorlist
#sudo pacman -Syy

#sudo firewall-cmd --add-port=1025-65535/tcp --permanent
#sudo firewall-cmd --add-port=1025-65535/udp --permanent
#sudo firewall-cmd --reload

# sudo virsh net-autostart default

#git clone https://aur.archlinux.org/paru.git
#cd paru
#makepkg -si --noconfirm

#paru -S --noconfirm system76-power
#sudo systemctl enable --now system76-power
#sudo system76-power graphics integrated
#paru -S --noconfirm gnome-shell-extension-system76-power-git
#paru -S --noconfirm auto-cpufreq
#sudo systemctl enable --now auto-cpufreq

sudo pacman -S --noconfirm xorg gdm gnome gnome-extra firefox gnome-tweaks  arc-gtk-theme arc-icon-theme  vlc ttf-dejavu  gnu-free-fonts ttf-liberation ttf-linux-libertine noto-fonts t ttf-ubuntu-font-family adobe-source-code-pro-fonts noto-fonts-emoji

sudo systemctl enable gdm
/bin/echo -e "\e[1;32mREBOOTING IN 5..4..3..2..1..\e[0m"
sleep 5
sudo reboot
