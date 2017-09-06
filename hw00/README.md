# HW00 - Getting Started

* Read Chapter 1 of the [Haskell Book](haskellbook.com).
* Install [`haskell stack`](https://docs.haskellstack.org/en/stable/README/)
* Edit the Haskell file `hw00/src/HW00.sh`:
    * You will see that `greeting` is `undefined`.
    * Change it to print `hello, world!` with a trailing newline.
* Try your code in `ghci`, the Haskell interpreter:

```bash
$ cd /path/to/hw00
$ stack ghci
Configuring GHCi with the following packages: gcj, hw00
[...]
*Main GCJ HW00
> greeting
hello, world!
```

* Compile your code and test it on the sample input:

```bash
$ cd /path/to/hw00
$ stack build
Configuring GHCi with the following packages: gcj, hw00
[...]
$ ../bin/check.sh hello
```
