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
cd /var/www/html/admin/style/vendor
rm -f ../skin-blue.min.css
cp skin-blue.min.css ../
rm -f ../AdminLTE.min.css
cp AdminLTE.min.css ../
cp custom.css ../
cd /var/www/html/admin/scripts/pi-hole/js
rm -f ../settings.js
cp settings.js ../
rm -f ../network.js
cp network.js ../
cd /var/www/html/admin
rm -f ../settings.php
cp settings.php ../
rm -f ../queries.php
cp queries.php ../
rm -f ../db_queries.php
cp db_queries.php ../
rm -f ../network.php
cp network.php ../

echo -n "# Do you have arevindh's Pi-hole Speedtest installed? Y/N"
read answer
if [ "$answer" = "y" ] || [ "$answer" = "Y"  ] || [ "$answer" = "Yes"  ] || [ "$answer" = "yes"  ] || [ "$answer" = "YES" ]; then
#code to copy and prepare speedtest files
cd /var/www/html/admin
rm -f ../speedtest.php
cp speedtest.php ../
cd /var/www/html/admin/scripts/pi-hole/js
rm -f ../speedresults.js
cp speedresults.js ../
fi
echo "#Finished, press Ctrl + F5 or Command-Shift-R on your computer to change to the new theme ! "

elif [ "$answer" = "n" ] || [ "$answer" = "N" ] || [ "$answer" = "No"  ] || [ "$answer" = "no"  ] || [ "$answer" = "NO" ]; then
    echo ""
    echo "# Hum okay.. goodbye!"
else
    echo "# Error. Yes or No."
fi
