# File Management and Other File-Related Commands, Scripts and Aliases

## Create a Tarball 
##### Tarball of a Single File
```bash
tar -zcvf output.tar.gz /path/to/filename.txt
```
##### Create a Tarball of a Directory
```bash
tar -zcvf output.tar.gz /path/to/dir/
```
##### Compress Multiple Directories at Once Into a Tarball
```bash
tar -zcvf output.tar.gz dir1 dir2 dir3 
```

#### Quick and Dirty Backup Script
- The following script will make a backup called "my-backup-<the current date>.tgz" of the /home/me/ directory.
```bash
#!/bin/bash          
OF=/var/my-backup-$(date +%Y%m%d).tgz
tar -cZf $OF /home/me/
```

## Sending Output To Files and More...

##### Write the Output of "long list"(ll) to a File
```bash
ls -l > output.txt
```
##### Pipe the Output 
- Using the ```|``` key will pass the *output* of one command, program or file and use it as the *input* to another
```bash
ls -l | output.txt
```


