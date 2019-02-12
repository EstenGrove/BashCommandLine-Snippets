#### __Custom Scripts and Bash Profiles__
###### Create a bash profile by adding aliases and custom scripts to the ~/.bashrc file
```
Create variables, custom scripts, aliases inside the bash config file. Add comments using #
```

---------

###### __Create an Alias__
Inside the .bash_profile define an alias: ```alias Docs='cd /Users/estengrove/Documents'```
Delete/Remove an alias: ```unalias Docs```



### __Useful Aliases__
###### Navigate to Documents folder:
```alias Docs='cd /Users/estengrove/Documents'```
###### Navigate to Projects folder: 
```alias Pro1='cd /Users/estengrove/Desktop/Projects2'```
###### Navigate to Projects2 folder: 
```alias Pro2='cd /Users/estengrove/Documents/Projects2'```
###### Clear console: 
```alias c='clear'```

### Create a Variable
```me="EstenGrove"```
To invoke the variable use th "$"
``` echo "Hello $me"``` Prints: *Hello EstenGrove


### Conditionals - example taken from [Tania Rascia's site](https://www.taniarascia.com/how-to-create-and-use-bash-scripts/)
```
if [ "age" -gt 20 ]
then
  echo "You can drink"
else
  echo "You are too young to drink"
fi
```
###### Bash Operators using flags
```
| Bash Operator | Operator | Description              |
| ------------- | -------- | ------------------------ |
| -eq           | ==       | Equal                    |
| -ne           | !=       | Not Equal                |
| -gt           | >        | Greather Than            |
| -ge           | >=       | Greater than or equal    |
| -lt           | <        | Less than                |
| -gt           | <=       | Less Than or equal       |
| -z            | == null  | Is null                  |
```

### Looping
#### __Types of Loops__
###### "for...do" Loops
```
for var in <list>
do
  <command>
done
```
###### "while...do" Loops
```
while [ <condition> ]
do
  <command>
done
```
###### "until...do" Loops
```
until [ <condition> ]
do
  <command>
done
```

-----
## __Examples of Bash Loops__
###### Using "for...do" loop
Print all names in a list using a "for...do" loop. For every name in names print it with the "counter".
```
** EXAMPLE 1: FOR LOOP
   
#!/bin/bash

names='Cartman Stan Kyle Kenny Butters'
counter=1

for name in $names
do
  echo "$counter. $name"
  ((counter++))
done

echo "ALL DONE!"
```
**RESULT:**
```
** EXAMPLE 1 ANSWER:
1. Cartman
2. Stan
3. Kyle
4. Kenny
5. Butters
ALL DONE!
```
###### Using "while...do" loop
While "counter" is less than or equal to 10, print "counter". Counts 1-10 then finishes.
```
** EXAMPLE 1: WHILE LOOP
   
#!/bin/bash

counter=1
while [ $counter -le 10 ]
do
  echo $counter
  ((counter++))
done

echo "ALL DONE!"
```
**RESULT:**
```
** EXAMPLE 1 ANSWER:
1
2
3
4
5
6
7
8
9
10
ALL DONE!
```
