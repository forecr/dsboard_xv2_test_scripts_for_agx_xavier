#!/bin/bash
if [ "$(whoami)" != "root" ] ; then
	echo "Please run as root"
	exit 1
fi


sudo echo 463 > /sys/class/gpio/export 
sudo echo 462 > /sys/class/gpio/export 
sudo echo out > /sys/class/gpio/PT.06/direction 
sudo echo out > /sys/class/gpio/PT.05/direction 
sudo echo 0 > /sys/class/gpio/PT.06/value 
sudo echo 0 > /sys/class/gpio/PT.05/value

sudo gtkterm -p /dev/ttyTHS1 -s 115200

sudo echo 463 > /sys/class/gpio/unexport
sudo echo 462 > /sys/class/gpio/unexport

