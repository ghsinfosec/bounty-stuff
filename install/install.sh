#!/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt install nmap -y

sudo apt install unzip -y

sudo apt install python3-pip -y

sudo apt install git -y

sudo apt install ripgrep

mkdir $HOME/recon
mkdir $HOME/tools

wget https://go.dev/dl/go1.21.1.linux-amd64.tar.gz
sudo tar -xzf go1.21.1.linux-amd64.tar.gz -C /usr/local
rm -f go1.21.1.linux-amd64.tar.gz

cd $HOME/tools

git clone https://github.com/danielmiessler/SecLists.git

git clone https://github.com/jhaddix/awsscrape.git

cd

# some go-to recon tools
/usr/local/go/bin/go install github.com/tomnomnom/assetfinder
/usr/local/go/bin/go install github.com/tomnomnom/meg@latest
/usr/local/go/bin/go install github.com/tomnomnom/httprobe@latest
/usr/local/go/bin/go install github.com/tomnomnom/gf
/usr/local/go/bin/go install github.com/tomnomnom/waybackurls@latest

/usr/local/go/bin/go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
/usr/local/go/bin/go install -v github.com/projectdiscovery/notify/cmd/notify@latest

/usr/local/go/bin/go install github.com/lc/gau/v2/cmd/gau@latest

curl -sL https://raw.githubusercontent.com/epi052/feroxbuster/master/install-nix.sh | bash

# create symbolic links
sudo ln -s $HOME/go/bin/assetfinder /usr/local/bin/assetfinder
sudo ln -s $HOME/go/bin/meg /usr/local/bin/meg
sudo ln -s $HOME/go/bin/httprobe /usr/local/bin/httprobe
sudo ln -s $HOME/go/bin/gf /usr/local/bin/gf
sudo ln -s $HOME/go/bin/waybackurls /usr/local/bin/waybackurls
sudo ln -s $HOME/go/bin/subfinder /usr/local/bin/subfinder
sudo ln -s $HOME/go/bin/notify /usr/local/bin/notify
sudo ln -s $HOME/go/bin/gau /usr/local/bin/gau
sudo ln -s $HOME/feroxbuster /usr/local/bin/feroxbuster


