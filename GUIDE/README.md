# A "Quick Start" Guide to Bash

### Aliases
- Allows commands to be referenced with a keyword
```bash
alias HOME='cd /Users/myusername'
```

### Functions

```bash
greeting () {
  echo "Hello $1"
}

greeting "Esten"

# Output
Hello Esten
```
