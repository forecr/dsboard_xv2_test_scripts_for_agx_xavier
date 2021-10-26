#!/bin/bash
if [ "$(whoami)" != "root" ] ; then
	echo "Please run as root"
	exit 1
fi

echo -n "nvgetty.service status: "
if [ "$(systemctl is-enabled nvgetty.service)" = "enabled" ]; then 
	echo "enabled"
	sleep 2
	sudo systemctl disable nvgetty.service
	echo "Service disabled, rebooting now ..."
	sleep 10
	sudo reboot
elif [ "$(systemctl is-enabled nvgetty.service)" = "disabled" ]; then
	echo "disabled"
else 
	echo "ERROR"
	echo "Failed to get unit file state -> No such file or directory"
	exit 1
fi


sudo echo 443 > /sys/class/gpio/export
sudo echo 446 > /sys/class/gpio/export
sudo echo 445 > /sys/class/gpio/export
sudo echo out > /sys/class/gpio/gpio443/direction
sudo echo out > /sys/class/gpio/gpio446/direction
sudo echo out > /sys/class/gpio/gpio445/direction
