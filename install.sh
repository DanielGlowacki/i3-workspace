#!/bin/sh
#
# Copyright (c) 2024 Daniel Głowacki <dglowacki4@gmail.com>
#
# This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License 
# as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; 
# without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

# You should have received a copy of the GNU General Public License along with this program. If not, see <https://www.gnu.org/licenses/>. 

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
cp -v ./config/xresources/* ~/.

# Copy Xinit file
cp -v ./config/xinit/* ~/.

# Copy BASH config files
cp -v ./config/bash/* ~/.

# Copy i3 configuration files
cp -rv ./config/i3 ~/.config/

# Copy vim configuration file
cp -v ./config/vim/* ~/.

# Copy emacs configuration files
mkdir -v ~/.emacs.d/
cp -v ./config/emacs/init.el ~/.emacs.d/init.el

# Reboot system
echo "Rebooting system..."
reboot
