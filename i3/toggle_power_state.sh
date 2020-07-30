#! /bin/bash 

case $1 in 
	mem)
		echo mem > /sys/power/state 
	;;
	disk)
		echo disk > /sys/power/state 
	;;
esac
