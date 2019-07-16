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
