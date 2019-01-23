---
title: <a href="https://303.ddns.net"><img src="smile.png" alt="drawing" width="100"/></a>
---

# Initial Raspberry Pi Installation

get sd card path

    lsblk

Download image from raspberrypi.org

extract it 

    unzip 2018-11-13-raspbian-stretch.zip

burn it to sd 
replace /dev/sdX with the sd card path

    dd bs=4M if=2018-11-13-raspbian-stretch.img of=/dev/sdX conv=fsync

place a file called ssh in the boot drive of the sd card

connect pi to network and power

list network devices to get ip address

    nmap -sn 192.168.1.0/24

ssh into your fresh pi

    ssh pi@TOUR_PIS_IP_ADDRESS
