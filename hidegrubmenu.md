edit **/etc/default/grub**
uncomment this line:

    GRUB_TIMEOUT=1
    GRUB_HIDDEN_TIMEOUT=1
    GRUB_HIDDEN_TIMEOUT_QUIET=true
    GRUB_FORCE_HIDDEN_MENU=true
    
an then run

    update-grub
