#!/bin/bash

script=/root/srv/tools/count.sh

[ -x "$script" ] || exit 1
head -1 "$script" | grep -q '^#!' || exit 1

# Run it against two files with different line counts, so a script that
# ignores its argument cannot answer both correctly.
check() {
  given=$("$script" "$1" 2>/dev/null | grep -o '[0-9]\+' | head -1)
  want=$(wc -l < "$1" | tr -d ' ')
  [ "$given" = "$want" ]
}

check /root/srv/logs/access.log && check /root/srv/logs/error.log
