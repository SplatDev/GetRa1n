#!/usr/bin/bash

appName="getra1n"
appSite="getra1n.xyz"
appVer="V1.0 Beta 1"
appDevs=( OPtimal Splat )

checkDeb() {
	if ! command -v apt &> /dev/null
	then
		echo ""
		echo "ERROR: Non-debian system detected. Exiting..."
		exit 1
	fi
}
checkRoot() {
	if [ "$EUID" -ne 0 ]
	then
		echo ""
		echo "ERROR: Not running as root. Please prefix this script with sudo. Exiting..."
		exit 2
	fi
}

echo "getra1n.xyz - Easily install and run checkra1n without hassle."
echo -n "Made by:"
for i in $appDevs; do
	echo -n " $i"
done 
echo "\n"
echo "Starting checks:"
echo "Checking if the system is debian-based..."
checkDeb
echo "Checking if the script is running as root..."
checkRoot
echo "Checks finished."
echo ""
echo "Adding repo to sources..."
echo "deb https://assets.checkra.in/debian /" | tee -a /etc/apt/sources.list
echo "Adding GPG key..."
apt-key adv --fetch-keys https://assets.checkra.in/debian/archive.key
echo "Updating repositories..."
apt update
echo "Installing checkra1n..."
apt install -y checkra1n
read -n1 -p "Start checkra1n? [Y/n] "

if [[ $REPLY == 'y' ]]
then
	checkra1n
elif [[ $REPLY == 'n' ]]
then
	exit 0
else
	checkra1n
fi
# Script developed by Splat and OPtimal
