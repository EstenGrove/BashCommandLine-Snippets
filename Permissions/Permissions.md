#### __Permissions__ 
###### Get Permissions in octal form (755, 644 etc.)
```
stat -c "%a" <file|directory>  
  FOR Mac: stat -f "%A" <file|directory>
```
###### Change user and group recursively
```
chown -R username:group <directory>
```
###### Change user and group for multiple different directories
```
chown -R username:group {dir1,dir2,dir3}
```
###### Change user group
```
chown :group <file>
```
###### List all user groups
```
groups
```
###### Add a user group
```
groupadd <groupname>
```
###### Get primary usergroup for a user
```
id -g -n <username>
```
###### Check a user group for a specific user
```
users <username>
Alternate way: grep <username> /etc/group
```
