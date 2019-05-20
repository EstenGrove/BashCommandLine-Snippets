# A "Quick Start" Guide to Bash

### Aliases
- Allows commands to be referenced with a keyword
```bash
alias HOME='cd /Users/myusername'
```

### Functions
- The ```$1``` references the first argument passed to the function.
- ```$2``` references the second argument passed to the function and so on...

```bash
# Define function
greeting () {
  echo "Hello $1"
}

# Function invokation
greeting "Esten"

# Output
Hello Esten
```

### Variables

```bash
# Declaration
name="Esten"

# Usage (using the function from the above example)
greeting $name

# Output
Hello Esten
```

### Conditionals

##### Syntax
```bash
if [expression]; then
  # do something...
fi

# Example
if [num < 10]; then
  echo "$num is less than 10"
fi
```





