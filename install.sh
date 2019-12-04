#!/bin/bash
# -------------------------[version 1.1]----------------------
# -------------[ Inspired by Navis Michael Bearly ]-----------
# -------------------[ Created by doOnline ]------------------
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
	  	sleep 1.0
	  		echo -e "${Text}Please wait until installation finishes..."
	  	sleep 1.5
	  		echo -e "${NC}Copying all 'Ubuntu McOS splash plymouth' theme files to plymouth's theme directory..."
	  		cp -iRv ubuntu-mcos-splash /usr/share/plymouth/themes/
	  	sleep 1.5
	  		echo -e "${NC}Finished copying all 'Ubuntu McOS splash' plymouth theme."
	  	sleep 1.0
  	clear
  		sleep 1.0
  			echo -e "${NC}Configuring 'Ubuntu McOS splash' plymouth theme..."
  		sleep 1.5
  			update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/ubuntu-mcos-splash/ubuntu-mcos-splash.plymouth 100
  		sleep 1.5
  			echo -e "${NC}Finished configuring 'Ubuntu McOS splash' plymouth theme..."
  		sleep 1.0
  	clear
  		sleep 1.0
  			echo "${Text}Select a number from which you want to enable the plymouth splash theme:"
  		sleep 0.5
    			echo -e "${NC} "
  			update-alternatives --config default.plymouth
  			update-initramfs -u
  		sleep 1.5
  			echo -e "${Text}Finished installation for 'Ubuntu McOS splash' plymouth theme!";
  		sleep 1.0
  	clear
fi
