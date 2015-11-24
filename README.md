# relaxedIT
it scripts for selv-repairing systems

> xxx: [monitor_service.sh](https://github.com/josy1024/relaxedIT/blob/master/monitor_service.sh) -

checks if service up and running (process for service name exists)
if not check filesystems read/write and remount if possible

* restart service
* (collect debug/diagnostic infos)
* if parameter reboot
** wait 60 seconds 
** check service again
** reboot me (init 6)

# helps on
* file system readonly problems (fsck should fix permanently)
* out of memory service errors
* applications hangs and do not start or need reboot

# usage in crontabs
to check "mysqld" service
```sh
*/15 * * * * /path/monitor_service.sh mysqld reboot >/dev/null 2>&1
*/15 * * * * /path/monitor_service.sh mysqld >/dev/null 2>&1
```

# important:
(collect debug/diagnostic infos)
collect logs in case of service erros for your needs and add them to debugticket.sh! (ps-ef >> log, lsof, netstat, ...)
