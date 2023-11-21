# Info

I wanted a way to quickly get started doing recon on a bug bounty program. This is a quick and dirty skeleton to get some tools installed, particularly on a new VPS, as well as setting up a semi-organized file structure for a new program.

## What's Included

`install/install.sh`

- Some tools from tomnomnom, project discovery, and others.

`program-setup/setup.sh`

- A simple file structure setup to keep programs organized. Could probably use some work, but it's better than nothing.

## Install

```bash
git clone https://github.com/ghsinfosec/bounty-stuff.git
cd bounty-stuff/install
chmod +x install.sh
./install.sh
```

## Setup for new program

```bash
root@vps:~# ~/bounty-stuff/program-setup/setup.sh
Program name: tesla
root@vps:~# tree -L 2 Documents/BugBounty/Programs/tesla/
Documents/BugBounty/Programs/tesla/
├── ResearchLog.md
├── burp-requests
├── recon
│   ├── amass
│   ├── assets
│   └── nmap
└── screenshots

7 directories, 1 file
```
