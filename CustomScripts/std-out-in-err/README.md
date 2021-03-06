# Working w/ ```stdout```, ```stdin``` and ```stderr```


## STDOUT 
- is the output that a bash shell will "print" in the shell. It can be redirected using ```>```
- you can also "silence" stdout and basically discard it's output by piping to ```/dev/null```

##### __Example 1__
```bash
ls > list.txt
```
- the above will print the output of "long list" to a file called "list.txt".
##### __Example 2__
- to "append" ```stdout``` to a file use the ```>>``` characters.
```bash
echo "Holy SHIT" >> logInfo/logInfo.txt
```
- the above will print "Holy SHIT" to logInfo.txt

## STDERR 
- is the output that a bash shell will "print" in the shell when there's an error. It can be redirected/piped using ```2>```

##### __Example__
```bash
ls noexist 2> noexist.txt
```
- the above will print the "error" from trying to list a directory that doesn't exist and pipe that to a file called "noexist.txt"

## Redirect STDOUT & STDERR
```bash
ls noexist > list.txt 2>&1
```
- the above will *try* to list "noexist" directory but will cause an error and it will print that error to list.txt.


## STDIN  
- STDIN is the "input" that bash accepts. For instance, when using "cat" to print a file's contents it's taking the file as an input then sending the output to the console to display.
- STDIN can be redirected using the ```<``` character.
- NOTE: not a lot of usecases for redirecting stdin
```bash
cat list.txt < test.txt
```
