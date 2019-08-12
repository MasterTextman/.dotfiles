# This script is to setup YCM --- specifically on Manjaro-based distros.
# This needs to be ran AFTER the plugin has been installed with VimPlug
yay -S cmake
cd ~/.vim/plugged/YouCompleteMe
python3 install.py --racer-completer 
