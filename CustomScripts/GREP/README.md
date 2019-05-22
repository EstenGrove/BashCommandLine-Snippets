# Grep Command

### Flags
- ```-i```
  - case-insensitive
    - ```grep -i "miller" file.txt
      - will search for "miller" regardless of case.
- ```-R```
  - search recursively
    - ```grep -R "miller" dir1/```
      - will search recursively thru ```dir1/``` for "miller"
- ```-c```
  - count the number of occurences
    - ```grep -ic "miller" file.txt```
      - will search for "miller" regardless of case and count the number of occurences
- ```-h```
  - will display the matched lines, not the filenames
- ```-l```
  - displays the filenames only
- ```-n```
  - displays the matched lines and their line numbers
- ```-v```
  - prints out the lines and *DO NOT* match the pattern
- ```-w```
  - matches the whole word
- ```-o```
  - prints *ONLY* the matched parts of a matching line, partials
- ```--color```
  - will print out the matches using color
