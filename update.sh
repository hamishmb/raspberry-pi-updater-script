#!/bin/bash
echo "-------- Updating Package Lists --------" > /var/log/autoupdate.log
apt-get update >> /var/log/autoupdate.log

apt-mark hold raspberrypi-kernel >> /var/log/autoupdate.log

echo "-------- Doing Dist-Upgrade --------" >> /var/log/autoupdate.log
apt-get dist-upgrade -y >> /var/log/autoupdate.log
echo "-------- Doing Clean Up --------" >> /var/log/autoupdate.log
apt-get autoremove -y >> /var/log/autoupdate.log

apt-mark hold raspberrypi-kernel >> /var/log/autoupdate.log

echo "\n\nIf you saw any kernel updates, a reboot is required." >> /var/log/autoupdate.log
