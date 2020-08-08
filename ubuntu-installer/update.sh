LOGDIR=~/.cache/log.install
LOG=$LOGDIR/$( date "+%Y-%m-%d-T-%H:%M:%S" )
mkdir -p $LOGDIR
rm -rf ./typescript

function main {
        sudo rm -f /var/lib/dpkg/lock*
        sudo rm -f /var/cache/apt/archives/lock*
	script -c "echo sudo $*;sudo $*" 
	cat typescript >> $LOG
	echo >> $LOG
	rm typescript;
}

main  apt-get -y update
main  apt     -y full-upgrade
main  apt     -y autoremove
main  apt-get -y upgrade
main  apt-get -y check
main  apt     -y install python-pip
main  apt     -y install zsh



