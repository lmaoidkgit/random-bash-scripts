#!/bin/bash

echo "This script would help you change your device's plymouth theme"
echo "By lmaoidkgit@github.com"
echo " "
sleep 1
echo "Installed plymouth themes:"
sudo ls /usr/share/plymouth/themes/
echo "Type the name of the theme you want to apply"
read themetochoose
sudo plymouth-set-default-theme $themetochoose -R
echo "Done !"
sleep 1
echo "Do you want to restart device ?"
read whattodo
if [ $whattodo != "yes" ]
then
    echo "Restartting device"
    sudo reboot
elif [ $whattodo != "Yes" ]
then
    echo "Restarting device"
    sudo reboot
else
    echo "Okay"
fi 


