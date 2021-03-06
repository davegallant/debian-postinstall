#!/usr/bin/env bash

set -x

# Basic building block tools
sudo apt install -y \
    curl \
    wget \
    git

# Desktop Env
sudo apt install -y \
    acpi \
    bspwm \
    compton \
    dunst \
    feh \
    imagemagick \
    lxappearance \
    rxvt-unicode \
    scrot \
    viewnior\
    xclip \
    xdotool \
    xsel \
    xsettingsd

# Networking tools
sudo apt install -y \
    dnsutils

# Developer tools
sudo apt install -y \
    shellcheck \
    tmux \
    vim \
    vim-gtk \
    vim-nox

# Printer
sudo apt install -y \
    cups

# Visuals
sudo apt install -y \
    fonts-noto \
    fonts-firacode \
    fonts-mplus \
    ttf-ancient-fonts \
    ttf-bitstream-vera \
    ttf-bitstream-vera \
    ttf-dejavu
    ttf-dejavu \
    ttf-freefont \
    ttf-liberation
    ttf-mscorefonts-installer \
    ttf-mscorefonts-installer \
    ttf-ubuntu-font-family

# zsh
if [ ! -e $HOME/.oh-my-zsh ]; then
    sudo apt install -y zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    curl -fsSL https://starship.rs/install.sh | bash
fi

# docker
if [ $(docker --help) != 0 ]; then
    curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
    sudo apt-key fingerprint 0EBFCD88
    sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/debian \
    $(lsb_release -cs) \
    stable"
    sudo apt-get update
    sudo apt-get install docker-ce docker-ce-cli containerd.io
    sudo groupadd docker
    sudo gpasswd -a $USER docker
fi

# Media
sudo apt install -y \
    vlc
