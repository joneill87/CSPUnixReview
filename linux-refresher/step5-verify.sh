#!/bin/bash

bin=/root/srv/tools/srvinfo
out=/root/srv/tools/srvinfo.out

[ -x "$bin" ] || exit 1
[ -f "$out" ] || exit 1

"$bin" 2>/dev/null | grep -q 'srv tools' || exit 1

# What they recorded has to be what the program actually prints.
diff -q <("$bin" 2>/dev/null) "$out" >/dev/null
