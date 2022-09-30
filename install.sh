# Install yay 
#git clone https://aur.archlinux.org/yay.git
#cd yay
#makepkg -si & rm -rf ./yay
#
# Install package
# xorg full??

# Base
sudo pacman -S git dunst nitrogen alacritty rofi rofi-calc rofi-emoji maim i3-gaps curl feh mpv firefox ttf-dejavu otf-font-awesome ttf-font-awesome ttf-ubuntu-font-family ttf-hack papirus-icon-theme picom zip rustup unrar unzip udiskie telegram-desktop tor xdg-user-dirs zsh zsh-autosuggestions zsh-syntax-highlighting zsh-theme-powerlevel10k zathura zathura-djvu zathura-pdf-mupdf python otf-font-awesome ttf-font-awesome clipmenu spaceship --noconfirm

# Plugin o altro
sudo pacman -S python-pip --noconfirm

## Install 3rd package
yay -S github-cli polybar visual-studio-code-bin nerd-fonts-hack ttf-weather-icons i3lock-color brave-bin betterlockscreen --noconfirm
#

## 
## My current driver nvidia
##yay -S nvidia-390xx-dkms nvidia-390xx-utils --noconfirm
#
## Configuration
#xdg-user-dirs-update
git clone https://github.com/metalneox/dotfiles.git
#
##Clear and install dotfiles
rm -rf ~/.*
cp -rT dotfiles ~/.
rm -rf dotfiles
rm ~/install.sh

#Polybar gmail
pip install google-api-python-client oauth2client
python ~/.config/polybar/scripts/gmail/auth.py
