#!/bin/sh

old_username="template"

read -p "new hostname: " hostname
echo $hostname > /etc/hostname

read -p "new username: " username
usermod -l $username $old_username
usermod -d /home/$username -m $username

echo "enter a new root password"
passwd

echo "enter a new password for $username"
passwd $username

