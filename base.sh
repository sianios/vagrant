#!/bin/bash

if [ $(free -m | grep -i swap | awk '{print $2}' ) == 0 ]; then
    dd if=/dev/zero of=/swapfile bs=500 count=1048k
    chmod 600 /swapfile
    mkswap /swapfile
    swapon /swapfile
    echo "/swapfile none swap sw 0 0" >> /etc/fstab
fi

ln -sf /usr/share/zoneinfo/Asia/Nicosia /etc/localtime
