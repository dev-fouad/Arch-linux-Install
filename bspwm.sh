#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

#sudo reflector -c Germany -a 12 --sort rate --save /etc/pacman.d/mirrorlist
#sudo pacman -Syy

#sudo firewall-cmd --add-port=1025-65535/tcp --permanent
#sudo firewall-cmd --add-port=1025-65535/udp --permanent
#sudo firewall-cmd --reload

# sudo virsh net-autostart default

git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --noconfirm

paru -S --noconfirm lightdm-slick-greeter 
paru -S --noconfirm lightdm-settings
paru -S --noconfirm polybar
paru -S --noconfirm brave-bin

#paru -S --noconfirm system76-power
#sudo systemctl enable --now system76-power
#sudo system76-power graphics integrated
#paru -S --noconfirm gnome-shell-extension-system76-power-git
#paru -S --noconfirm auto-cpufreq
#sudo systemctl enable --now auto-cpufreq

echo "MAIN PACKAGES"

sleep 5

sudo pacman -S --noconfirm xorg light-locker lightdm bspwm sxhkd firefox rxvt-unicode picom nitrogen lxappearance dmenu nautilus arandr alsa-utils pulseaudio alsa-utils pulseaudio-alsa pavucontrol arc-gtk-theme arc-icon-theme vlc ttf-dejavu gnu-free-fontsttf-liberation ttf-linux-libertine noto-fonts ttf-ubuntu-font-family noto-fonts-emoji ttf-font-awesome awesome-terminal-fonts archlinux-wallpaper rofi playerctl scrot  dunst pacman-contrib


sudo systemctl enable lightdm

mkdir -p .config/{bspwm,sxhkd,dunst}

install -Dm755 /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/bspwmrc
install -Dm644 /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/sxhkdrc

printf "\e[1;32mCHANGE NECESSARY FILES BEFORE REBOOT\e[0m"

