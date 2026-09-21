#!/bin/bash

[ "$(tr -dc '0-9' < /root/srv/logs/port.txt 2>/dev/null)" = "80" ] || exit 1

want=$(wc -c < /root/srv/logs/error.log | tr -d ' ')

[ "$(tr -dc '0-9' < /root/srv/logs/size.txt 2>/dev/null)" = "$want" ]
