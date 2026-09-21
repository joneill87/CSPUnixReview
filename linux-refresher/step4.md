`error.log` told you the service could not take port 80 because something already had it. Your next job is to find out what that is.

`ss` lists the machine's sockets. The flags you want are listening, TCP, numeric and with the owning process attached:

```
ss -ltnp
```

That prints every listening socket on the machine, which is more than you need. Pipe it into `grep` and keep only the line for port 80.

That line carries a process id. Look the process up with `ps -p`, and record the **name** of the program holding the port:

```
echo <program name> > /root/srv/port80.txt
```

<details><summary>Tip</summary>

A pipe, `|`, feeds the output of the command on its left into the command on its right instead of to the screen. So `ss -ltnp | grep something` runs `ss` and shows you only the lines `grep` matches.

The process id is at the end of the `ss` line, inside the brackets after `users:` — look for `pid=`.

</details>

**Going further:** [pipes](https://www.youtube.com/watch?v=ZtqBQ68cfJc&t=6832s) · [ps](https://www.youtube.com/watch?v=ZtqBQ68cfJc&t=10052s) · [the ss command](https://www.youtube.com/watch?v=phY8Q7Woxsw)
