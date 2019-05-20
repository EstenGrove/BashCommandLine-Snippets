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
