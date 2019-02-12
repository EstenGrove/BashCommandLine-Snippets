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
| ------------- |:--------:| -----------------------: |
| -eq           | ==       | Equal                    |
| -ne           | !=       | Not Equal                |
| -gt           | >        | Greather Than            |
| -ge           | >=       | Greater than or equal    |
| -lt           | <        | Less than                |
| -gt           | <=       | Less Than or equal       |
| -z            | == null  | Is null                  |
```
