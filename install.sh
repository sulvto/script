#!/bin/bash

# install on-my-zsh now
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

yum install autojump-zsh -y
yum install shadowsocks-qt5 -y
yum install flameshot -y
yum install filezilla -y
yum install bochs -y
yum install tmux -y
yum install nasm -y
yum install wireshark -y
yum install libreoffice -y
yum install git -y
yum install nmap -y
yum install copyq -y
yum install notepadqq -y
yum install iotop iftop -y
yum install fzf -y
yum install bat -y
yum install snapd -y


# install docker
yum remove docker \
		   docker-client \
		   docker-client-latest \
		   docker-common \
		   docker-latest \
		   docker-latest-logrotate \
		   docker-logrotate \
		   docker-engine

yum install docker-ce docker-ce-cli containerd.io
groupadd docker
usermod -aG docker $USER



# vim
# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


# install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# vim plugins=(zsh-autosuggestions) to ~/.zshrc

# install master pdf editor
wget https://code-industry.net/public/master-pdf-editor-5.4.38-qt5.x86_64.rpm
yum install master-pdf-editor-5.4.38-qt5.x86_64.rpm
rm master-pdf-editor-5.4.38-qt5.x86_64.rpm



# install redis-desktop-manager
sudo snap install redis-desktop-manager
