#!/bin/bash

# Discussion, issues and change requests at:
#   https://github.com/hack-chat/install-scripts
#
# Script to install hack.chat repo onto a Debian or Ubuntu system.
#
# Run as root or insert `sudo -E` before `bash`:
#
# curl -sL https://raw.githubusercontent.com/hack-chat/install-scripts/main/hcInstall.sh | bash -
#   or
# wget -qO- https://raw.githubusercontent.com/hack-chat/install-scripts/main/hcInstall.sh | bash -
#

cd ~

sudo apt update
sudo apt install -y build-essential git

curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

node -v
npm -v
git --version

git clone https://github.com/hack-chat/main.git hackchat
cd hackchat
npm install
