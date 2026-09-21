You've just logged in to the machine running the service.

Before you touch anything, work out where you are and what is here.

The service's logs can be found in a directory called `logs` which sits inside the `srv` directory. The `srv` directory should be inside your home directory (`/root`)

Move into the directory holding the service's logs — using a relative path from where you are now, (not the full path from `/`) and leave a record of where you landed:

```
pwd > here.txt
```

<details><summary>Tip</summary>

Three commands cover this: one prints the directory you are in, one lists what is in it, one moves you somewhere else.

A relative path is read from where you are standing. `srv` means the `srv` directory here; `/srv` means one at the root of the filesystem, which is somewhere else entirely.

</details>
