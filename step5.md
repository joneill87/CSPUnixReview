There is a small utility in `srv/tools` that nobody has managed to
build. Compile it:

```
gcc srvinfo.c -o srvinfo
```

It will not compile. Read what the compiler says: it gives you a file,
a line number, and what it expected to find. Open the file in `nano`,
fix it, save, and compile again.

Once it builds, run it. Then look at the two files you now have:

```
file srvinfo.c
file srvinfo
```

One of them is text you can read. The other is not, and never will be.

<details><summary>Tip</summary>

The compiler reports the line it had reached when it became confused,
which is not always the line with the mistake on it. C does not notice
a missing statement terminator until it runs into the next statement,
so look at the line above the one it names as well.

In `nano`: arrow keys move, typing edits, `Ctrl-O` then Enter saves,
`Ctrl-X` leaves. The shortcuts are along the bottom of the screen,
where `^` means Ctrl.

To run a program sitting in the directory you are standing in, you
have to say so: `./srvinfo`.

</details>
