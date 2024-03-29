#!/bin/bash
if [ "$(whoami)" != "root" ] ; then
	echo "Please run as root"
	exit 1
fi

sudo echo 240 > /sys/class/gpio/export
sudo echo in > /sys/class/gpio/gpio240/direction

trap interrupt_func INT
interrupt_func() {
	sudo echo 240 > /sys/class/gpio/unexport
}

watch -n 0.1 sudo cat /sys/class/gpio/gpio240/value

