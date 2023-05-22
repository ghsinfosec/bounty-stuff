#!/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt install nmap -y

sudo apt install unzip -y

sudo apt install python3-pip -y

sudo apt install git -y

sudo apt install ripgrep

mkdir recon
mkdir tools

wget https://go.dev/dl/go1.20.2.linux-amd64.tar.gz
sudo tar -xzf go1.20.2.linux-amd64.tar.gz -C /usr/local
rm -f go1.20.2.linux-amd64.tar.gz
echo "export PATH=/usr/local/go/bin:${PATH}" | sudo tee -a $HOME/.bashrc
source $HOME/.bashrc

cd tools

git clone https://github.com/danielmiessler/SecLists.git

git clone https://github.com/jhaddix/awsscrape.git

cd

/usr/local/go/bin/go install -u github.com/tomnomnom/assetfinder
/usr/local/go/bin/go install github.com/tomnomnom/meg@latest
/usr/local/go/bin/go install github.com/tomnomnom/httprobe@latest
/usr/local/go/bin/go install -u github.com/tomnomnom/gf
/usr/local/go/bin/go install github.com/tomnomnom/waybackurls@latest
/usr/local/go/bin/go install github.com/hahwul/dalfox/v2@latest

sudo ln -s $HOME/go/bin/waybackurls /usr/local/bin/waybackurls

/usr/local/go/bin/go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

/usr/local/go/bin/go install github.com/lc/gau/v2/cmd/gau@latest

curl -sL https://raw.githubusercontent.com/epi052/feroxbuster/master/install-nix.sh | bash

sudo ln -s $HOME/feroxbuster /usr/local/bin/feroxbuster


