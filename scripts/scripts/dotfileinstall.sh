#!/bin/bash
cd ~/.dotfiles
mv .bashrc .bashrcOLD
sudo apt-get install stow
sudo apt-get install python-pip
sudo apt-get install fonts-powerline
sudo apt-get install rxvt-unicode-256color
sudo apt-get install thefuck
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
pip install powerline-shell
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
stow neofetch && echo installed neofetch config
stow Xresources && echo installed Xresources
stow scripts && echo installed scripts
stow backgrounds && echo downloaded wallpapers
echo Done!
