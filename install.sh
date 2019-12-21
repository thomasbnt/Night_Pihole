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
echo "#                         Night Pi-Hole - Dark theme                            #"
echo "#                                                                              #"
echo "#          Repository : https://github.com/thomasbnt/Night_Pi-Hole/             #"
echo "#                                                                              #"
echo "################################################################################"
echo ""
echo -n "# Do you want to install this theme? Y/N or CTRL+C: "
read answer
if [ "$answer" = "y" ] || [ "$answer" = "Y"  ] || [ "$answer" = "Yes"  ] || [ "$answer" = "yes"  ] || [ "$answer" = "YES" ]; then
cd /var/www/html/admin/style/vendor
rm -f /var/www/html/admin/style/vendor/skin-blue.min.css
cp /var/www/html/admin/style/vendor/Night_Pi-hole/skin-blue.min.css /var/www/html/admin/style/vendor/
rm -f /var/www/html/admin/style/vendor/AdminLTE.min.css
cp /var/www/html/admin/style/vendor/Night_Pi-hole/AdminLTE.min.css /var/www/html/admin/style/vendor/
cp /var/www/html/admin/style/vendor/Night_Pi-hole/custom.css /var/www/html/admin/style/vendor/
rm -f /var/www/html/admin/scripts/pi-hole/js/settings.js
cp /var/www/html/admin/style/vendor/Night_Pi-hole/settings.js /var/www/html/admin/scripts/pi-hole/js/
rm -f /var/www/html/admin/scripts/pi-hole/js/network.js
cp /var/www/html/admin/style/vendor/Night_Pi-hole/network.js /var/www/html/admin/scripts/pi-hole/js/
rm -f /var/www/html/admin/settings.php
cp /var/www/html/admin/style/vendor/Night_Pi-hole/settings.php /var/www/html/admin/
rm -f /var/www/html/admin/queries.php
cp /var/www/html/admin/style/vendor/Night_Pi-hole/queries.php /var/www/html/admin/
rm -f /var/www/html/admin/db_queries.php
cp /var/www/html/admin/style/vendor/Night_Pi-hole/db_queries.php /var/www/html/admin/
rm -f /var/www/html/admin/network.php
cp /var/www/html/admin/style/vendor/Night_Pi-hole/network.php /var/www/html/admin/

echo -n "# Do you have arevindh's Pi-hole Speedtest installed? Y/N: "
read answer
if [ "$answer" = "y" ] || [ "$answer" = "Y"  ] || [ "$answer" = "Yes"  ] || [ "$answer" = "yes"  ] || [ "$answer" = "YES" ]; then
#code to copy and prepare speedtest files
cd /var/www/html/admin
rm -f /var/www/html/admin/speedtest.php
cp /var/www/html/admin/style/vendor/Night_Pi-hole/speedtest.php /var/www/html/admin/
cd /var/www/html/admin/scripts/pi-hole/js
rm -f /var/www/html/admin/scripts/pi-hole/js/speedresults.js
cp /var/www/html/admin/style/vendor/Night_Pi-hole/speedresults.js /var/www/html/admin/scripts/pi-hole/js/
fi
echo "#Finished, press Ctrl + F5 or Option-Command-R on your computer to change to the new theme ! "

elif [ "$answer" = "n" ] || [ "$answer" = "N" ] || [ "$answer" = "No"  ] || [ "$answer" = "no"  ] || [ "$answer" = "NO" ]; then
    echo ""
    echo "# Hum okay.. goodbye!"
else
    echo "# Error. Yes or No."
fi
