the file kali used to set login-background at the directory

- first you have to move this dirctory and type:
```
cd /etc/alternatives
readlink desktop-login-background
```
- and then move to that dirctory, and retype 
```
readlink background
```
## to see which file you should to change,

for example:

	/usr/share/backgrounds/kali-light-16x9.png

replace it,relog! And it will work!


change grub background

>overwrite this file
	
	/boot/grub/themes/kali/grub-16x9.png 

change grub initialize background

>overwrite this file
	
	/usr/share/grub/themes/kali/grub-16x9.png
