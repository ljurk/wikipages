---
title: <a href="https://303.ddns.net"><img src="smile.png" alt="drawing" width="100"/></a>
---

How to get VMware-Remote-Console running under manjaro

    git clone https://aur.archlinux.org/ncurses5-compat-libs.git
    cd ncurse5-compat-libs.git
    makepkg -si --skippgpcheck
    
    wget https://my.vmware.com/group/vmware/details?downloadGroup=VMRC1003&productId=742
    
    chmod u+x VMware-Remote-Console-10.0.3-9300449.x86_64.bundle
    
    ./VMware-Remote-Console-10.0.3-9300449.x86_64.bundle --console
