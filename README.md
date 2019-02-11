## BashCommandLine-Snippets
A set a various different commands for different purposes along with snippets and bash scripts.

--------

#### Text & Data Processing
> awk '{print $1,$7}' <name of access_log> | cut -d? -f1 | sort | uniq -c |sort -nr
  Produced Output:
      1 103.18.19.70 /wp//wp-login.php
      1 103.18.19.70 //wp-login.php
      1 103.18.19.70 /wordpress//wp-login.php
      1 103.18.19.70 /blog//wp-login.php
