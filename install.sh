#!/bin/sh
sudo pacman -S feh picom kitty ttf-firacode-nerd zsh zsh-syntax-highlighting stow

# yay
sudo pacman -S base-devel
git clone https://aur.archlinux.org/yay.git ~/yay
cd ~/yay
makepkg -si

# Change shell  to zsh
chsh -s /bin/zsh

#Stow
mkdir -p ~/.config
cd ~/dotfiles
stow .

# Compile suckless
cd ~/dotfiles/suckless/dwm
sudo make clean install

cd ~/dotfiles/suckless/dmenu
sudo make clean install

echo "You need to modify .xinitrc to you monitor settings"
