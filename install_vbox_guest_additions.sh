mkdir -p ./done
[[ -f ./done/$0 ]] && echo already done && exit
sudo apt install gcc  || { echo fail gcc; exit; }
sudo apt install make    || { echo fail install make; exit; }
echo assumming /dev/sr0. To be sure, use cmd 'lsblk'
echo INSURE GUEST ADDITIONS CD INSTALLED
echo press enter to continue.
read
sudo mkdir -p /mnt/sr0
sudo mount /dev/sr0 /mnt/sr0
sudo /mnt/sr0/VBoxLinuxAdditions.run
touch ./done/$0
