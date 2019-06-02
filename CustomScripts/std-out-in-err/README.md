# Working w/ ```stdout```, ```stdin``` and ```stderr```

## STDOUT 
- is the output that a bash shell will "print" in the shell. It can be redirected using ```>```

##### __Example__
```bash
ls > list.txt
```
- the above will print the output of "long list" to a file called "list.txt".


## STDERR 
- is the output that a bash shell will "print" in the shell when there's an error. It can be redirected/piped using ```2>```

##### __Example__
```bash
ls noexist 2> noexist.txt
```
- the above will print the "error" from trying to list a directory that doesn't exist and pipe that to a file called "noexist.txt"
