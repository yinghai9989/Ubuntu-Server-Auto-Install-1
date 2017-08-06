#!/bin/bash

if [[ $EUID -ne 0 ]]; then
	echo "This Script must be run as root"
	exit 1
fi

#Modes (Variables)
# b=backup i=install r=restore u=update(coming soon)
mode="$1"
Programloc=/opt/mylar
backupdir=/opt/backup/Mylar
time=$(date +"%m_%d_%y-%H_%M")

case $mode in
	(-i|"")
	wget https://nzbget.net/download/nzbget-latest-bin-linux.run
	sh nzbget-latest-bin-linux.run --destdir /opt/Nzbget
	;;


#Config file nzbget.conf
#Quick help (from nzbget-directory):
#   ./nzbget -s        - start nzbget in console mode
#   ./nzbget -D        - start nzbget in daemon mode (in background)
#   ./nzbget -C        - connect to background process
#   ./nzbget -Q        - stop background process
#   ./nzbget -h        - help screen with all commands
#Successfully installed into /home/cabox/workspace/nzbget
#Web-interface is on http://127.0.0.2:6789 (login:nzbget, password:tegbzn6789)
