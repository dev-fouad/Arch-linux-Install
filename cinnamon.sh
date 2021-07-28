#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

#sudo reflector -c Germany -a 12 --sort rate --save /etc/pacman.d/mirrorlist
#sudo pacman -Syy

#sudo firewall-cmd --add-port=1025-65535/tcp --permanent
#sudo firewall-cmd --add-port=1025-65535/udp --permanent
#sudo firewall-cmd --reload

#git clone https://aur.archlinux.org/paru.git
#cd paru
#makepkg -si --noconfirm

paru -S --noconfirm xviewer
paru -S --noconfirm xplayer
paru -S --noconfirm pix

#paru -S --noconfirm system76-power
#sudo systemctl enable --now system76-power
#sudo system76-power graphics integrated
#paru -S --noconfirm gnome-shell-extension-system76-power-git
#paru -S --noconfirm auto-cpufreq
#sudo systemctl enable --now auto-cpufreq

sudo pacman -S --noconfirm xorg lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings cinnamon firefox  arc-gtk-theme arc-icon-theme  vlc xed xreader gnome-shell

sudo systemctl enable lightdm
/bin/echo -e "\e[1;32mREBOOTING IN 5..4..3..2..1..\e[0m"
sleep 5
sudo reboot
