#!/bin/bash
# Virtualbox kept failing here fore some reason, so I moved software installs back to the boot command for Virtualbox only 
if test -f .vbox_version ; then
# Enable modules at boot
echo 'vboxguest_enable="YES"' >> /boot/loader.conf
echo 'vboxservice_enable="YES"' >> /boot/loader.conf

elif [ ! -e /home/vagrant/.vbox_version ] ; then

###Vmware tools
    echo "Installing VMware Tools"
# Install deps
    pkg_add -r open-vm-tools-nox11

fi