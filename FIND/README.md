# Find

## Syntax
```bash
find <directory> -flags <search-item>
```
#### Example
- This will find all directories inside the current directory that start with "Web". Case-sensitive
```bash
find . -type d -name "Web*"
```
### Find, without Case Sensitivity
- Use the ```-iname``` flag when searching by name

###### Find all documents that *start with* "test" regardless of case, in the /Documents directory
```bash
find /Documents -type f -iname "test*"
```


###### Find all documents with a specific extension(.txt, .js, .html...) recursively.
```bash
find /Documents -type -f -name “*.txt”
```
###### Find a directory by name
```bash
find / -type d -name someDirectoryName
```
###### Find all files by the "Last Modified <\date>"
```bash
find . -type f -ls | grep "Oct 10"
```
###### Find all files modified in the last hour
```bash
find / mmin -60
```
###### Find all executables in the root directory
```bash
find / -perm /a=x
```
###### Find all empty directories
```bash
find . -type d -name -empty
```
###### Find all files for a specific user in the "home" directory
```bash
find /home -user <someUser>
```
###### Find all files by user group in the "home" directory
```bash
find /home -group <someGroup>
```
###### Find all files of a certain size(range)
```bash
find / -size +50M -size -100M
  Flags:
  - bytes: c
  - kilobytes: k
  - megabytes: M
  - Gigabytes: G
  - Sizes and Ranges
    - +30M means anything greater than or equal to 30 megabytes
    - -30M means anything less than or equal to 30 megabytes
```
#### __Find and Remove__
###### Find and delete a specific file
```bash
find . -name "someFile.txt" -type f -delete
```
###### Find and delete all files of a specific type or extension
```bash
find . -name "*.txt" -type f -delete
```
