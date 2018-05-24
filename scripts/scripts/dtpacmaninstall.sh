#!/bin/bash
cd ~/.dotfiles
mv ~/.bashrc .bashrcOLD
mv ~/.zshrc .zshrcOLD
mv ~/.oh-my-zsh .oh-my-zshOLD
pacman -S --noconfirm stow
pacman -S --noconfirm python-pip
# pacman -S --noconfirm fonts-powerline
# pacman -S --noconfirm rxvt-unicode-256color
pacman -S --noconfirm thefuck
sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo apt-get update
pacman -S --noconfirm neovim
pacman -S --noconfirm python3-pip
pacman -S --noconfirm zsh
pacman -S --noconfirm feh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
pip install powerline-shell
pip3 install pywal
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
echo Done!
