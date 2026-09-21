#!/bin/bash

mkdir -p /root/srv/logs /root/srv/old /root/srv/tools

cat > /root/notes.txt <<'EOF'
Handover notes
--------------

The service is not running. A placeholder is sitting on port 80 until
the real thing is written.

Still to do:
  - the rotated log in srv/old needs archiving
  - there is a leftover temp file in srv/logs that can go
  - nobody has managed to build the utility in srv/tools
EOF

cat > /root/srv/logs/access.log <<'EOF'
10.0.0.14 - - [09:15:02] "GET / HTTP/1.1" 200 1043
10.0.0.14 - - [09:15:02] "GET /style.css HTTP/1.1" 200 512
10.0.0.201 - - [09:17:44] "GET / HTTP/1.1" 200 1043
10.0.0.201 - - [09:17:45] "GET /favicon.ico HTTP/1.1" 404 209
10.0.0.9 - - [09:22:10] "GET /status HTTP/1.1" 200 17
10.0.0.9 - - [09:22:11] "GET /status HTTP/1.1" 200 17
10.0.0.77 - - [09:31:58] "GET / HTTP/1.1" 200 1043
EOF

cat > /root/srv/logs/error.log <<'EOF'
[09:14:58] starting service
[09:14:58] bind failed on port 80: address already in use
[09:14:58] giving up
EOF

cat > /root/srv/old/access.log.1 <<'EOF'
10.0.0.14 - - [08:02:11] "GET / HTTP/1.1" 200 1043
10.0.0.31 - - [08:44:09] "GET /status HTTP/1.1" 200 17
EOF

touch /root/srv/logs/access.log.tmp

cat > /root/srv/tools/srvinfo.c <<'EOF'
#include <stdio.h>

int main(void) {
    printf("srv tools: log utilities, version 1.0\n")
    return 0;
}
EOF

mkdir -p /opt/placeholder
cd /opt/placeholder
nohup python3 -m http.server 80 >/dev/null 2>&1 &
