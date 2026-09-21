Tidy the service directory up. All of this happens under `srv`. (Make sure you return to this directory)

1. Make a directory called `archive`.
2. Move the rotated log out of `old` and into `archive` (ensure the original is gone).
3. Put a copy of `error.log` in `archive` too — **do not** remove the original
4. Delete the leftover temp file in `logs`.
5. Remove the `old` directory, now that there is nothing in it.

<details><summary>Tip</summary>

Moving and copying are different commands, and one of these steps wants the same file to end up in two places at once — so that one is not a move.

If removing `old` fails, read the message before trying something heavier. `rmdir` removes a directory only when it is empty; deal with what is inside it first.

</details>

**Going further:** [mkdir](https://www.youtube.com/watch?v=ZtqBQ68cfJc&t=3640s) · [rmdir](https://www.youtube.com/watch?v=ZtqBQ68cfJc&t=4323s) · [rm](https://www.youtube.com/watch?v=ZtqBQ68cfJc&t=4385s) · [mv](https://www.youtube.com/watch?v=ZtqBQ68cfJc&t=5035s) · [cp](https://www.youtube.com/watch?v=ZtqBQ68cfJc&t=5271s)
