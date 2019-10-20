

# Basic building block tools
sudo apt install -y \
    curl \
    wget \
    git

# Window manager
sudo apt install -y \
	compton \
	dunst \
	fonts-mplus \
	fonts-noto \
	fonts-firacode \
	hsetroot \
	i3 \
	i3-wm
	i3lock \
	i3status \
	lxappearance \
	rofi \
	rxvt-unicode \
	scrot \
	suckless-tools \
	viewnior\
	xsel \
	xsettingsd

# Developer tools
sudo apt install -y \
    shellcheck \
    tmux \
    vim

# zsh
if [ ! -e $HOME/.oh-my-zsh ]; then
    sudo apt install -y zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
    ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
fi

# docker
if [ $(docker --help) != 0 ]; then
    sudo apt install -y \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg-agent \
        software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo apt-key fingerprint 0EBFCD88
    sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"
    sudo apt-get update
    sudo apt-get install docker-ce docker-ce-cli containerd.io
    sudo groupadd docker
    sudo gpasswd -a $USER docker
fi

# Media
sudo apt install -y \
    deluge \
    vlc
