#!/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt install nmap -y

sudo apt install unzip -y

sudo apt install python3-pip -y

sudo apt install git -y

mkdir recon
mkdir tools

wget https://go.dev/dl/go1.20.2.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.2.20.2.linux-amd64.tar.gz
echo "export PATH=${HOME}/go/bin;/usr/local/go/bin:${PATH}" | sudo tee -a $HOME/.profile
source $HOME/.profile

cd tools

git clone https://github.com/danielmiessler/SecLists.git

git clone https://github.com/jhaddix/awsscrape.git

cd

go get -u github.com/tomnomnom/assetfinder
go install github.com/tomnomnom/meg@latest
go install github.com/tomnomnom/httprobe@latest
go get -u github.com/tomnomnom/gf
go install github.com/tomnomnom/waybackurls@latest

sudo ln -s $HOME/go/bin/waybackurls /usr/local/bin/waybackurls

go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

go install github.com/lc/gau/v2/cmd/gau@latest

curl -sL https://raw.githubusercontent.com/epi052/feroxbuster/master/install-nix.sh | bash

sudo ln -s $HOME/feroxbuster /usr/local/bin/feroxbuster


