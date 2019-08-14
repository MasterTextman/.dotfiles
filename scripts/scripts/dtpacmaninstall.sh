#!/bin/bash

# rewrite $HOME for root
sudo bash -c "echo Defaults env_keep += "HOME" >> /etc/sudoers"

# Goes into correct dir
cd /home/*/.dotfiles

# Backs up old config
rm $HOME/.bashrcOLD
rm $HOME/.zshrcOLD
rm -rf $HOME/.oh-my-zshOLD
mv $HOME/.bashrc $HOME/.bashrcOLD
mv $HOME/.zshrc $HOME/.zshrcOLD
mv $HOME/.oh-my-zsh $HOME/.oh-my-zshOLD

# Installing initial programs
echo Installing initial programs with pacman...
sleep 3
sudo pacman -S --noconfirm stow
sudo pacman -S --noconfirm python-pip
sudo pacman -S --noconfirm rxvt-unicode #-256color
sudo pacman -S --noconfirm thefuck
sudo pacman -S --noconfirm neovim
sudo pacman -S --noconfirm python3-pip
sudo pacman -S --noconfirm zsh
sudo pacman -S --noconfirm feh

# Installs the powerlevel9k theme.
# NOTE: In .zshrc, ZSH_THEME is commented out.
# The reason for this is that there's a line at the end
#	that sources the powerlevel9k theme.
# If you want to change themes, comment said line,
#	and uncomment the ZSH_THEME line.
sudo pacman -S --noconfirm zsh-theme-powerlevel9k

# Installs VimPlug
echo Installing VimPlug...
sleep 1
sudo curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Installs oh-my-zsh
# Commented out as the files are stowed instead.
# echo Reinstalling oh-my-zsh...
# sleep 1
# sh -c "$(curl -fsSL \
#    https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" & disown

# Installing yay AUR wrapper around pacman
echo Installing yay...
sleep 3
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
sudo rm -rf yay

# Additional python progs
echo Installing python programs
sleep 3
sudo -H pip install powerline-shell
sudo -H pip3 install pywal

# yay installs
echo Installing yay progs
yay --no-confirm -S otf-fira-code
yay --no-confirm -S xorg-xbacklight

# installing powerline fonts
cd
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
sudo ./install.sh
cd ..
rm -rf fonts

# reset dir
cd /home/*/.dotfiles

# stowing - or setting up configurations
echo Stowing configurations...
sleep 3
stow bash && echo installed bash config
stow calcurse && echo installed calcurse config
stow compton && echo installed compton config
stow dunst && echo installed dunst config
stow i3 && echo installed i3 config
stow mpd && echo installed mpd config
stow ncmpcpp && echo installed ncmpcpp config
stow polybar && echo installed polybar config
stow powerline-shell && echo installed powerline-shell config
stow tmux && echo installed tmux config
stow vim && echo installed vim config
stow nvim && echo downloaded nvim config
rm -rf ~/.vim.old
git clone https://github.com/flazz/vim-colorschemes.git ~/.vim.old
cp -r ~/.vim.old/* ~/.vim/ && echo installed colorschemes
stow neofetch && echo installed neofetch config
stow Xresources && echo installed Xresources
stow scripts && echo installed scripts
stow backgrounds && echo downloaded wallpapers
stow zsh && echo installed zsh

sleep 1
xrdb ~/.Xresources && echo loaded xresources
chsh -s $(which zsh) && echo set zsh as default

echo Done!
echo Remember to run pacman -Syu if you\'ve just installed the OS!
