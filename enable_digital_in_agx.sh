#!/bin/bash
if [ "$(whoami)" != "root" ] ; then
	echo "Please run as root"
	exit 1
fi

sudo echo 240 > /sys/class/gpio/export
sudo echo in > /sys/class/gpio/gpio240/direction
sudo echo 241 > /sys/class/gpio/export
sudo echo in > /sys/class/gpio/gpio241/direction

