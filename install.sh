# Install yay 
#git clone https://aur.archlinux.org/yay.git
#cd yay
#makepkg -si & rm -rf ./yay
#
# Install package
# xorg full??

# Base
sudo pacman -S --needed --noconfirm - < packages
# Plugin o altro
sudo pacman -S python-pip --noconfirm

## Install 3rd package
yay -S --needed --noconfirm - < packages.aur

## Configuration
#xdg-user-dirs-update
git clone https://github.com/metalneox/dotfiles-i3.git
#
##Clear and install dotfiles
rm -rf ~/.*
cp -rT dotfiles ~/.
rm -rf dotfiles
rm ~/install.sh

#Polybar gmail
#pip install google-api-python-client oauth2client
#python ~/.config/polybar/scripts/gmail/auth.py
