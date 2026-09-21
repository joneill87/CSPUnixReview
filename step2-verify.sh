#!/bin/bash

[ "$(tr -dc '0-9' < /root/srv/logs/port.txt 2>/dev/null)" = "80" ]
