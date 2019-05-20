# A "Quick Start" Guide to Bash

### Aliases
- Allows commands to be referenced with a keyword
```bash
alias HOME='cd /Users/myusername'
```

### Functions

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
