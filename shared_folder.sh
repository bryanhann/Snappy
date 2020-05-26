_GUEST_MACHINE_NAME=ubuntu-18.04.3-live-server-amd64
_SHARENAME=host4ubuntu
_HOSTPATH=/__shared/ubuntu
_MOUNTPOINT=/mnt/${_SHARENAME}
if [ "$1" == "--host" ]; then
    VBoxManage sharedfolder add ${_GUEST_MACHINE_NAME} --name ${_SHARENAME} --hostpath ${_HOSTPATH}
fi

if [ "$1" == "--guest" ]; then
    sudo mkdir ${_MOUNTPOINT}
    sudo mount -t vboxsf -o uid=1000,gid=1000 ${_SHARENAME} ${_MOUNTPOINT}
fi
