#!/bin/sh

#Setup zsh
apt-get install -y zsh
chsh -s $(which zsh) 

#Setup oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i '11s/robbyrussell/agnoster/' ~/.zshrc

#Setup terminator
apt-get install terminator
cp ./terminator_config ~/.config/terminator/config
