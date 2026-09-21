Last one.

Write a script that counts the lines in a log file. It takes the filename as an argument, so that it works on any of them rather than one in particular.

In `srv/tools`, create `count.sh` with two lines:

- a shebang, so the system knows what should run the file
- a line that counts the lines of whatever file it was given

Make it executable, then run it on the access log:

```
./count.sh /root/srv/logs/access.log
```

<details><summary>Tip</summary>

Inside a script, `$1` stands for the first thing typed after the script's name, `$2` the second, and so on.

`wc` counts things, and `wc -l` counts lines.

A shebang is `#!` followed by the path to the program that should run the file — for a bash script, `#!/bin/bash`, on the very first line.

`chmod +x` adds the execute permission. Without it you get "permission denied" no matter how correct the script is.

</details>
