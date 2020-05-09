sudo apt install gcc
sudo apt install make
echo assumming /dev/sr0. To be sure, use cmd 'lsblk'
echo INSURE GUEST ADDITIONS CD INSTALLED
sudo rm -rf /mnt/sr0
sudo mkdir /mnt/sr0
sudo mount /dev/sr0 /mnt/sr0
ls /mnt/sr0
sudo /mnt/sr0/VBoxLinuxAdditions.run

