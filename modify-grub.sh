#run as root
cat >> /etc/default/grub <<EOF
##############################################################
GRUB_DEFAULT=0
GRUB_TIMEOUT_STYLE=menu
GRUB_TIMEOUT=5
GRUB_DISTRIBUTOR=`lsb_release -i -s 2> /dev/null || echo Debian`
GRUB_CMDLINE_LINUX_DEFAULT="maybe-ubiquity"
GRUB_CMDLINE_LINUX=""
GRUB_GFXPAYLOAD_LINUX=1024x768x24
GRUB_INIT_TUNE="480 440 1"
EOF
update-grub
