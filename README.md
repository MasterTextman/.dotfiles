# .dotfiles
Configuration [and others]

# how to install
These dotfiles are mostly distro-agnostic, however the install scripts are not. There are two in particular:
- `dotfileinstall.sh` : For *aptitude*.
- `dtpacmaninstall.sh` : For *pacman*.

Note that these scripts were only tested for **Ubuntu** and **Manjaro** respectively. Other operating systems may face some problems.

The *pacman* script in particular installs an AUR wrapper called `yay` - after this script is complete, you should be able to use `yay` from now on. 

These scripts not only install the dotfiles and configurations, but they also install applications, external scripts, and more - all to assist a more smooth/indepth installation.

They also contain *sleeps* on purpose. This is to check where errors happen, as many commands are run - so knowing which section caused what would be difficult without them. To avoid the sleeps, comment them out. They shouldn't be too long however.

# what will happen?
all the programs i normally use will be installed, and the configuration files will be placed accordingly using `stow`. if you don't want a program, you can comment it out in the script - though some programs are necessary for the whole script to run, like `stow`
