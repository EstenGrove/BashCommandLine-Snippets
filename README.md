## BashCommandLine-Snippets
A set a various different commands for different purposes along with snippets and bash scripts.

--------

#### __Text & Data Processing - Access Logs, Error Logs etc.__
<hr>


###### Sort the number of hits per IP address per web page from greatest to fewest.
```
awk '{print $1,$7}' <name of access_log> | cut -d? -f1 | sort | uniq -c |sort -nr
```
###### Example Output:
* 6 108.18.19.70 /wp/wp-login.php
* 3 103.143.19.3 /wp-login.php
* 1 113.18.21.91 /wordpress/wp-login.php
* 1 97.18.19.7 /blog/wp-login.php

###### Get the 20 Most Recent Results from a Specific Month 
```
awk '{print $1}' estengrove.beoktrue.com-Oct-2018 | sort | uniq -c | sort -rn | head
```
###### Print columns 4 and 5 of an Apache error-log.
```
awk ‘{print $4, “ “, $5}’ error_log
```
###### Print messages that were rejected and logged in the exim-rejectlog.
```
tail -1000 exim_rejectlog | awk ‘{print $8}’ | sort | uniq -c | sort -rn | head
```
###### Get the web traffic by IP for a specific date(ie. October 18, 2018)
```
grep "18/Oct/2018" |  awk '{print $1}' ptpmfg.com-Oct-2018 | sort | uniq -c | sort -rn | head
```
###### Print a specific line number in a file
```
sed -n 383p someFile.txt
```
###### Print multiple lines in a file. Specifically a range.
```
sed -n '3,6p' someFile.txt
```
---------
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
