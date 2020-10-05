#!/bin/sh
#Setup compile YCM
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all
cd -
#Setup zsh
apt-get install -y zsh
sudo -u $USER chsh -s $(which zsh) 

#Setup oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i '11s/robbyrussell/agnoster/' ~/.zshrc

#Setup terminator
mkdir -p ~/.config/terminator
apt-get install terminator
cp ./config_terminator ~/.config/terminator/config
