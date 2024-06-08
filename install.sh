#!/bin/sh

# Update Debian
apt update && apt upgrade -y

# Install software
echo "Installing software..."
apt install -y xinit rxvt-unicode vim curl i3 volumeicon \
        firefox-esr firefox-esr-l10n-pl mupdf \
        gcc gdb

# Copy configuration files
echo "Copying confifuration files..."

# Copy Xresources file
cp -v ./config/xresources/xresources ~/.Xresources

# Copy Xinit file
cp -v ./config/xinit/xinitrc ~/.xinitrc

# Copy BASH config files
cp -v ./config/bash/bash_aliases ~/.bash_aliases
cp -v ./config/bash/bashrc ~/.bashrc

# Copy i3 configuration files
cp -rv ./config/i3 ~/.config/

# Copy vim configuration file
cp -v ./config/vim/vim ~/.vimrc

# Reboot system
echo "Rebooting system..."
reboot
