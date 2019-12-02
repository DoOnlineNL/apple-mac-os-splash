#!/bin/bash

# ---------------------[version 1.1-modded]-------------------
# --------------[ Created by Navis Michael Bearly ]-----------
# ------------------[ Modified by doOnline ]------------------
# ------------------[ doonline@doonline.nl ]------------------

Text='\033[1;32m'
NC='\033[0m'

if ((${EUID:-0} || "$(id -u)")); then
  clear
  sleep 1.5
  	echo -e "${NC}Sorry, You are not root"
  sleep 1.0
  	echo "Please run using sudo command"
  sleep 1.0
  	echo -e "${Text}Cancelling Installation Command"
  sleep 1.5
  exit 1
else
  clear
  sleep 1.5
  	echo -e "${Text}Please Wait Until Installing Complete"
  sleep 1.5
  	echo -e "${NC}Copying all Apple Mac - Plymouth theme files"
  	cp -iRv apple-mac-plymouth /usr/share/plymouth/themes/
  sleep 1.5
  clear
  	echo -e "${Text}Please Wait Until Installing Completes"
  	echo -e "${NC}Configuring..."
  sleep 1.5
  	update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/apple-mac-plymouth/apple-mac-plymouth.plymouth 100
  	
  	echo -e "${Text}Apple Mac Plymouth theme Configured!"
  sleep 1.5
  clear
  	echo "Select Number of Plymouth Theme"
  sleep 1.0
    echo -e "${NC} "
  	update-alternatives --config default.plymouth
  	update-initramfs -u
  sleep 0.5
  	echo "Finished Installing..."
  sleep 1.5
  clear
fi
