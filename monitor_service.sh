#!/bin/sh
# author: josef lahmer
# 2015-09

# */15 * * * * /path/monitor_service.sh mysqld reboot >/dev/null 2>&1
# */15 * * * * /path/monitor_service.sh mysqld >/dev/null 2>&1

[ "$1" == "" ] && echo "parameter dienstname fehlt"
[ "$1" == "" ] && exit

if [ -z "$(pgrep $1)" ]
  then
    echo "ERROR: $0 service check $1, versuche sofortigen dienstneustart und init 6 in 60 sekunden" | /bin/mail -s "$HOSTNAME check $0" email@fqdn.com
    
    LOG=`/bin/basename $0`

# try to repair kown server errors, remount disks

    /bin/mount -o remount,rw,noatime / >>/tmp/$LOG.log 2>&1
    [ -e "/mnt/appdisk" ] && /bin/mount -o remount,rw,noatime /mnt/appdisk >>/tmp/$LOG.log 2>&1
    
    /bin/sync

# try service restart

    /sbin/service $1 restart >>/tmp/$LOG.log 2>&1
    
# implement logging
# collect debug infos (for diagnose)
# /debugticket.sh 2>&1
    
    if [ "$2" = "reboot" ] ; then
# implement logging

        /bin/sleep 60
        if [ -z "$(pgrep $1)" ]
            then
            /sbin/init 6
        fi
    fi
#else
# foo is running
#        echo $0 running
fi
