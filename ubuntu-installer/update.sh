#!/bin/bash
if [ "$1" == "" ]; then
    export HERE=$(dirname $0)
    export LOGDIR=~/.logs/SNAPPY-INSTALL-LOGS
    mkdir -p $LOGDIR
    export LOG=$LOGDIR/$( date "+%Y-%m-%d-T-%H:%M:%S" )
    #export LOG=$HERE/$( date "+%Y-%m-%d-T-%H:%M:%S" )
    script -c "$0 --recur"  $LOG
    exit
 fi

 main () {
    sudo rm -f /var/lib/dpkg/lock*
    sudo rm -f /var/cache/apt/archives/lock*
    echo "--------[sudo $*]--------"
    sudo $*
    echo
    echo
}
echo
echo '###############################################################################'
echo date: $(date)
echo git: $(git log --oneline -n1)
echo '###############################################################################'
echo
source $HERE/script
