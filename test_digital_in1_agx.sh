#!/bin/bash
if [ "$(whoami)" != "root" ] ; then
	echo "Please run as root"
	exit 1
fi

watch -n 0.1 sudo cat /sys/class/gpio/gpio241/value
