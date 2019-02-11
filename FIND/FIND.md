#### __Find__
###### Find all documents with a specific extension(.txt, .js, .html...) recursively.
```
find /Documents -type -f -name “*.txt”
```
###### Find a directory by name
```
find / -type d -name someDirectoryName
```
###### Find all files by the "Last Modified <\date>"
```
find . -type f -ls | grep "Oct 10"
```
###### Find all files modified in the last hour
```
find / mmin -60
```
###### Find all executables in the root directory
```
find / -perm /a=x
```
###### Find all empty directories
```
find . -type d -name -empty
```
###### Find all files for a specific user in the "home" directory
```
find /home -user <someUser>
```
###### Find all files by user group in the "home" directory
```
find /home -group <someGroup>
```
###### Find all files of a certain size(range)
```
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
```
find . -name "someFile.txt" -type f -delete
```
###### Find and delete all files of a specific type or extension
```
find . -name "*.txt" -type f -delete
```
