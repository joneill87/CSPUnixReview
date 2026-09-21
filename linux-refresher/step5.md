There is a small utility in `srv/tools` that nobody has managed to build. Compile it:

```
gcc srvinfo.c -o srvinfo
```

It will not compile. Read what the compiler says: it gives you a file, a line number, and what it expected to find. Open the file in `nano`, fix it, save, and compile again.

Once it builds, run it and see what it says. Then run it again, sending what it prints into a file instead of to the screen:

```
./srvinfo > srvinfo.out
```

Then look at the two files you started with:

```
file srvinfo.c
file srvinfo
```

One of them is text you can read. The other is not, and never will be.

<details><summary>Tip</summary>

The first line of the error is `file:line:column` — it tells you exactly where to look. Underneath, the compiler reprints that line, marks the spot with a `^`, and shows what it expected to find there. Read those three things in order and the fix follows.

In `nano`: arrow keys move, typing edits, `Ctrl-O` then Enter saves, `Ctrl-X` leaves. The shortcuts are along the bottom of the screen, where `^` means Ctrl.

To run a program sitting in the directory you are standing in, you have to say so: `./srvinfo`.

</details>
