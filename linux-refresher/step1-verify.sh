#!/bin/bash

[ "$(cat /root/srv/logs/here.txt 2>/dev/null)" = "/root/srv/logs" ]
