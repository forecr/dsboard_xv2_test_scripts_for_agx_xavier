#!/bin/bash
if [ "$(whoami)" != "root" ] ; then
	echo "Please run as root"
	exit 1
fi

sudo echo 1 > /sys/class/gpio/gpio443/value
sudo echo 1 > /sys/class/gpio/gpio446/value
sudo echo 1 > /sys/class/gpio/gpio445/value
#sudo gtkterm -p /dev/ttyTHS1 -s 115200 -w RS485
