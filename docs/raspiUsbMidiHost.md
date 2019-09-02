---
title: <a href="https://303.ddns.net"><img src="smile.png" alt="drawing" width="100"/></a>
---

#Raspberry Pi as a USB-MIDI-Host


copied from: [https://stimresp.wordpress.com/2016/02/08/using-a-raspberry-pi-as-usb-midi-host/](https://stimresp.wordpress.com/2016/02/08/using-a-raspberry-pi-as-usb-midi-host/)



Once a command prompt is available, it’s a matter of installing Alsa:

    sudo apt-get install alsa alsa-utils

Now connect the *class compliant* MIDI devices, in my case the Akai LPK25 and E-mu USB MIDI 1×1.

To show all connected MIDI devices:

    sudo amidi -l

Show connection status and port numbers of connected MIDI devices

    sudo aconnect -i -o

Look for the device ID, which is in the format x:0. In my case, the LPK25 was 20:0 and the Emu 1×1 was 16:0. So to connect the output of the LPK to the output of the Emu, just go:

    sudo aconnect 20:0 16:0

…and voila! Works a treat here, no latency and I’ve sent boatloads of MIDI through it.

To dump all midi message to the screen,
    
    sudo amidi -d

Naturally, we will want this connection to happen automatically every time we start the Pi. Of the several ways to do this, I opted for the laziest, which was to make a root crontab.
If you’re not root already,

    sudo su
    crontab -e

at the end of the file, enter the aconnect command that works for you to run at reboot, e.g.

    @reboot aconnect 20:0 16:0
