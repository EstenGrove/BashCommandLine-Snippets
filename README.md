## BashCommandLine-Snippets
A set a various different commands for different purposes along with snippets and bash scripts.

--------

#### Text & Data Processing - Access Logs, Error Logs etc.
```
awk '{print $1,$7}' <name of access_log> | cut -d? -f1 | sort | uniq -c |sort -nr
```
   >   6 108.18.19.70 /wp//wp-login.php
   >  3 103.143.19.3 //wp-login.php
   >   1 113.18.21.91 /wordpress//wp-login.php
   >   1 97.18.19.7 /blog//wp-login.php
```
awk '{print $1}' estengrove.beoktrue.com-Oct-2018 | sort | uniq -c | sort -rn | head
```
```
awk ‘{print $4, “ “, $5}’ error_log
```
```
tail -1000 exim_rejectlog | awk ‘{print $8}’ | sort | uniq -c | sort -rn | head
```
```
grep "18/Oct/2018" |  awk '{print $1}' ptpmfg.com-Oct-2018 | sort | uniq -c | sort -rn | head
```
