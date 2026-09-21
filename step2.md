The service is not running, and the log says why.

List the logs directory in long form, so you can see sizes and dates
rather than just names. Then read `error.log` — it is three lines.

It failed trying to take a port. Record which one:

```
echo <the port number> > port.txt
```

<details><summary>Tip</summary>

`ls` on its own gives you names and nothing else. The long form adds
permissions, owner, size and date, and it is one flag away — `ls --help`
will tell you which flag.

To read a short file straight to the screen, `cat` it.

</details>
