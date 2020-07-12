#! /bin/sh 

echo "**********Chose CLIENT to start X-Display**********"
read -p "[i]3-wm, [x]fce4: " value
HOME=$(echo $HOME)

case $value in 
	"i")
		echo "exec i3" > $HOME/.xinitrc
		;;
	"x")
		echo "exec startxfce4" > $HOME/.xinitrc
		;;
esac

