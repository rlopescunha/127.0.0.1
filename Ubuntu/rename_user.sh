#!/bin/sh

read -r -p "What is the username?" olduser
echo
killall -u $olduser
id $olduser

read -r -p "New username:" newuser
usermod -l $newuser $olduser
groupmod -n $newuser $olduser
usermod -d /home/$newuser -m $newuser
usermod -c "New_real_name" $newuser

id $newuser
