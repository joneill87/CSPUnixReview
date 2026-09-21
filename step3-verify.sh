#!/bin/bash

[ -f /root/srv/archive/access.log.1 ] || exit 1
[ -f /root/srv/archive/error.log ] || exit 1
[ -f /root/srv/logs/error.log ] || exit 1
[ ! -e /root/srv/logs/access.log.tmp ] || exit 1
[ ! -e /root/srv/old ] || exit 1

exit 0
