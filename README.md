## BashCommandLine-Snippets
A set a various different commands for different purposes along with snippets and bash scripts.

--------

#### Text & Data Processing - Access Logs, Error Logs etc.
```
awk '{print $1,$7}' <name of access_log> | cut -d? -f1 | sort | uniq -c |sort -nr
```
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
