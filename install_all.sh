#!/bin/sh

sudo apt install zsh git curl vim fonts-powerline fonts-firacode rofi feh lxappearance i3lock-fancy

# oh-my-zsh and zsh-syntax-highlighting
# remove git from the .zshrc plugins
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
sed -i '/plugins=(git/s/)$/ zsh-autosuggestions zsh-syntax-highlighting)/' ~/.zshrc
sed -i 's/robbyrussell/arrow/' ~/.zshrc
source ~/.zshrc

# vim and vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~/.vimrc
vim +PluginInstall +qall

# terminator
cp -r terminator ~/.config/

# tmux
cp .tmux.* ~/

# Xresources
cp .Xresources ~/

# xsesssionrc
cp .xsesssionrc ~/

mkdir ~/bin

# For zsh autosuggestion color fix
#export TERM=xterm-256color

# For jgmenu to work
#export PATH=$PATH:~/bin

cp -r .config/* ~/.config

cp -r .config/polybar/scripts/pmenu_* ~/bin/

mkdir ~/.fonts
cp -r .config/polybar/fonts/* ~/.fonts
fc-cache -fv

cp 4k-wallpaper-architecture-bird-s-eye-view-1482778.jpg ~/Pictures/

# Themes
# gruvbox-gtk - https://github.com/3ximus/gruvbox-gtk.git
# qogir-light - https://github.com/vinceliuice/Qogir-theme.git

# https://github.com/polybar/polybar

# https://github.com/johanmalm/jgmenu/

# https://launchpad.net/~kgilmer/+archive/ubuntu/speed-ricer
