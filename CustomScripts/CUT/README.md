# Using the CUT Command
```cut``` takes two flags:
  - ```-d``` which is the column delimeter.
  - ```-f``` to specify the columns you want to work on.
  
## Test what column you're selecting
- this will grab the 2nd column of adult.csv and check the first 3 lines for recurring matches
```bash
cut -d "," -f 2 adult.csv | head -3
```
