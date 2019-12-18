#!/bin/bash
clear
if [[ $EUID -ne 0 ]]; then
   echo "################################################################################"
   echo "#                This script must be run as root (sudo -s)                     #"
   echo "################################################################################"
   exit
fi
clear
echo "################################################################################"
echo "#                                                                              #"
echo "#                         Night PiHole - Dark theme                            #"
echo "#                                                                              #"
echo "#          Repository : https://github.com/thomasbnt/Night_PiHole/             #"
echo "#                                                                              #"
echo "################################################################################"
echo ""
echo -n "# Do you want to install this theme? Y/N or CTRL+C :  "
read answer
if [ "$answer" = "y" ] || [ "$answer" = "Y"  ] || [ "$answer" = "Yes"  ] || [ "$answer" = "yes"  ] || [ "$answer" = "YES" ]; then
rm -f ../skin-blue.min.css
cp skin-blue.min.css ../
rm -f ../AdminLTE.min.css
cp AdminLTE.min.css ../
cp custom.css ../
echo "#Finished, press Ctrl + F5 or Command-Shift-R on your computer to change to the new theme ! "

elif [ "$answer" = "n" ] || [ "$answer" = "N" ] || [ "$answer" = "No"  ] || [ "$answer" = "no"  ] || [ "$answer" = "NO" ]; then
    echo ""
    echo "# Hum okay.. goodbye!"
else
    echo "# Error. Yes or No."
fi
