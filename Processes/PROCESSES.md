# Processes and Other Scripts


### Get the Processes that are Eating up Memory(ie Memory hogs)
```bash
alias memHogsTop='top -l 1 -o rsize | head -20'
alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'
```
