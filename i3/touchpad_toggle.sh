#! /bin/bash 

# get the touchpad ID
# put your device name below. 
# you can use 
	# $: xinput list to check you touchpad

ID=$(xinput | grep -i "touchpad" | awk '{ print $6 }' | sed 's/id=//' )

# get status 
STATUS=$(xinput list-props $ID | grep "Device Enabled" | awk '{ print $4 }')

# get the tap status and property ID 
# TEMP=$(input list-props $ID | grep --max-count=1 "Tapping Enabled")

case $1 in 
	toggle_touchpad)
		if [ $STATUS -ne 0 ]
		then 
			xinput --disable $ID 
		else 
			xinput --enable $ID 
		fi
	;;
	start_touchpad)
		xinput --disable $ID 
	;;
esac
