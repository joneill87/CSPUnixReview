#!/bin/bash

[ -x /root/srv/tools/srvinfo ] || exit 1

/root/srv/tools/srvinfo 2>/dev/null | grep -q 'srv tools'
