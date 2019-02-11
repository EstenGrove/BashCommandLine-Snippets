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
###### Print the # of times an IP address was rejected by Apache's Firewall.
```
tail -1000 exim_rejectlog | awk ‘{print $8}’ | sort | uniq -c | sort -rn | head
```
###### Get the web traffic by IP for a specific date(ie. October 18, 2018)
```
grep "18/Oct/2018" |  awk '{print $1}' ptpmfg.com-Oct-2018 | sort | uniq -c | sort -rn | head
```
