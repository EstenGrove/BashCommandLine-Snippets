# Git Scripts, Aliases and Commands
- A collection of useful helpers to improve production and efficiency

### Git Add, Commit and Push Script
- NOTE: to change the branch that you're pushing to it's best to create a separate alias. ALSO, may need to source???
```bash
acp (){
  git add -A;git commit -m "$1";git push -u origin master
}
```
- To Run the command:
```bash
acp "Comment goes here..."
```

### Git Diffing
- check for differences between two different commit trees and install the needed dependencies IF changes are found.
```bash    
#! /bin/bash

# Check differences between two separate sub trees/commits
# If there are differences then it will run npm install to install new dependencies that are needed
# If there are NO differences then it will echo a message with "No changes found in package.json"

exec >> log/hooks-output.log 2>&1

if git diff-tree --name-only --no-commit-id ORIG_HEAD HEAD | grep --quiet 'package.json'; then
  echo "$(date): Running npm install because package.json has changed"
  npm install > /dev/null
else
  echo "$(date): No changes found in package.json"
fi
```
