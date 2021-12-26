#!/bin/bash

ln -sf /usr/share/zoneinfo/Africa/Algiers /etc/localtime
hwclock --systohc
sed -i '177s/.//' /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "KEYMAP=fr" >> /etc/vconsole.conf
echo "arch-fouad" >> /etc/hostname
echo "127.0.0.1 	localhost" >> /etc/hosts
echo "::1       	localhost" >> /etc/hosts
echo "127.0.1.1 	arch-fouad.localdomain		arch-fouad" >> /etc/hosts
#echo root:password | chpasswd

# You can add xorg to the installation packages, I usually add it at the DE or WM install script
# You can remove the tlp package if you are installing on a desktop or vm

pacman -S --noconfirm grub efibootmgr networkmanager network-manager-applet wireless_tools wpa_supplicant xf86-video-intel xorg xorg-xwininfo xorg-xinit xorg-xprop xorg-xdpyinfo xorg-xbacklight pulseaudio-bluetooth pulseaudio-alsa pulsemixer pamixer volumeicon playerctl pulseaudio-alsa pulseaudio alsa-firmware alsa-lib alsa-plugins alsa-utils gst-plugins-good gst-plugins-bad gst-plugins-base gst-plugins-ugly  pacman-contrib dialog mtools dosfstools base-devel linux-headers xdg-user-dirs xdg-utils gvfs bluez bluez-utils cups bash-completion openssh tlp git

grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager
systemctl enable bluetooth
systemctl enable cups.service
systemctl enable sshd
#systemctl enable avahi-daemon
#systemctl enable tlp # You can comment this command out if you didn't install tlp, see above
#systemctl enable reflector.timer
#systemctl enable fstrim.timer
#systemctl enable firewalld
#systemctl enable acpid

useradd -mG fouad
#echo fouad:password | chpasswd

#echo "fouad ALL=(ALL) ALL" >> /etc/sudoers.d/fouad


#printf "\e[1;32mDone! Type exit, umount -a and reboot.\e[0m"




