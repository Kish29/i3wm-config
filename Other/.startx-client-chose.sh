#! /bin/sh 

echo "**********Chose CLIENT to start X-Display**********"
read -p "[i]3-wm, [x]fce4: " value

case $value in 
	"i")
		echo "exec i3" > /root/.xinitrc
		;;
	"x")
		echo "exec startxfce4" > /root/.xinitrc
		;;
esac

