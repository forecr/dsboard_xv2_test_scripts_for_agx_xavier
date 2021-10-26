#!/bin/bash
if [ "$(whoami)" != "root" ] ; then
	echo "Please run as root"
	exit 1
fi

sudo echo 244 > /sys/class/gpio/export
sudo echo out > /sys/class/gpio/gpio244/direction
sudo echo 245 > /sys/class/gpio/export
sudo echo out > /sys/class/gpio/gpio245/direction
sudo echo 246 > /sys/class/gpio/export
sudo echo out > /sys/class/gpio/gpio246/direction

echo "DIGITAL_OUT0 OFF"
echo "DIGITAL_OUT1 OFF"
echo "DIGITAL_OUT2 OFF"
sudo echo 0 > /sys/class/gpio/gpio244/value
sudo echo 0 > /sys/class/gpio/gpio245/value
sudo echo 0 > /sys/class/gpio/gpio246/value

