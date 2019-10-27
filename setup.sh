#!/bin/sh

#Setup zsh
apt-get install -y zsh
chsh -s $(which zsh) 

#Setup oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
mkdir ~/.config/terminator
sed -i '11s/robbyrussell/agnoster/' ~/.zshrc

#Setup terminator
apt-get install terminator
cp ./config_terminator ~/.config/terminator/config
