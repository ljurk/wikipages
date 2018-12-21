---
title: <a href="https://303.ddns.net"><img src="smile.png" alt="drawing" width="100"/></a>
---

# How to solve permission error when uploading to Arduino through Platformio CLI


if

    platformio run --target upload
    
spits out the error
    
    could not open port: Permission denied

you have to join the group owning the port

    ls -lha /dev/ttyUSB0
    #output
        crw-rw---- 1 root uucp 188, 0 21. Dez 16:50 /dev/ttyUSB0
    #join the group
    sudo usermod -a -G uucp ljurk
