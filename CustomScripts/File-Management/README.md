# File Management and Other File-Related Commands, Scripts and Aliases

#### Create a Tarball of a Single File
```bash
tar -zcvf output.tar.gz /path/to/filename.txt
```
#### Create a Tarball of a Directory
```bash
tar -zcvf output.tar.gz /path/to/dir/
```
#### Compress Multiple Directories at Once Into a Tarball
```bash
tar -zcvf output.tar.gz dir1 dir2 dir3 
```

### Write the Output of a Command, File or Program to a File
```bash
ls -l > output.txt
```
