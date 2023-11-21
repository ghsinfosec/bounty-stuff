#!/bin/bash

# setup folder structure for new bug bounty program

read -p "Program name: " program
prog_dir=$HOME/Documents/BugBounty/Programs/$program

mkdir -p $prog_dir/{recon/{amass,assets,nmap},screenshots,burp-requests} 

touch $prog_dir/ResearchLog.md
echo "# $program" > $prog_dir/ResearchLog.md


