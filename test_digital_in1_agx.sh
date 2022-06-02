#!/bin/bash
if [ "$(whoami)" != "root" ] ; then
	echo "Please run as root"
	exit 1
fi

sudo echo 241 > /sys/class/gpio/export
sudo echo in > /sys/class/gpio/gpio241/direction

watch -n 0.1 sudo cat /sys/class/gpio/gpio241/value

sudo echo 241 > /sys/class/gpio/unexport
