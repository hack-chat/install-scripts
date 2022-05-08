#!/usr/bin/env bash
#
# Discussion, issues and change requests at:
#   https://github.com/hack-chat/install-scripts
#
# Script to install hack.chat repo onto a Debian or Ubuntu system.
#
# curl -sL https://raw.githubusercontent.com/hack-chat/install-scripts/main/hcInstall.sh | bash -
#   or
# wget -qO- https://raw.githubusercontent.com/hack-chat/install-scripts/main/hcInstall.sh | bash -
#

WORK_DIR="$HOME"
NODE_SETUP_SOURCE="https://deb.nodesource.com/setup_18.x"

if [[ $EUID = 0 ]]; then
    echo "This script should not be run as root."
    exit 1
fi

cd $WORK_DIR &&

sudo apt update &&
sudo apt install -y git curl &&

curl -fsSL $NODE_SETUP_SOURCE | sudo -E bash - &&
sudo apt-get install -y nodejs &&

echo -n "node: " && node -v &&
echo -n "npm: " && npm -v &&
echo -n "git: " && git --version &&

git clone https://github.com/hack-chat/main.git hackchat &&
cd hackchat &&
npm install
