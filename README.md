# Hanoi towers in sed

Usage:

```
$ sed -f hanoi.sed
abcd
1:abcd 2: 3:
1:abc 2:d 3:
1:ab 2:d 3:c
1:ab 2: 3:cd
1:a 2:b 3:cd
1:ad 2:b 3:c
1:ad 2:bc 3:
1:a 2:bcd 3:
1: 2:bcd 3:a
1: 2:bc 3:ad
1:c 2:b 3:ad
1:cd 2:b 3:a
1:cd 2: 3:ab
1:c 2:d 3:ab
1: 2:d 3:abc
1: 2: 3:abcd
SOLVED.
```

`a` is the biggest ring, `b` is smaller, etc. Can pass to the script up to 26 rings, don't try this at home, though.
