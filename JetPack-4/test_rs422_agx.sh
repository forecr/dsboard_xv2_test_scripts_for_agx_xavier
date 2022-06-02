#!/bin/bash
if [ "$(whoami)" != "root" ] ; then
	echo "Please run as root"
	exit 1
fi

sudo echo 446 > /sys/class/gpio/export 
sudo echo 445 > /sys/class/gpio/export 
sudo echo out > /sys/class/gpio/gpio446/direction 
sudo echo out > /sys/class/gpio/gpio445/direction 
sudo echo 0 > /sys/class/gpio/gpio446/value 
sudo echo 1 > /sys/class/gpio/gpio445/value

sudo gtkterm -p /dev/ttyTHS1 -s 115200

sudo echo 446 > /sys/class/gpio/unexport
sudo echo 445 > /sys/class/gpio/unexport

