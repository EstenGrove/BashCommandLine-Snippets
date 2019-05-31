# Useful File-Related Commands & Scripts

Recursively List all Directories Contents in a Tree Graph
- NOTE: this may require installing the "tree" package
```bash
tree
```

### File Naming w/ Brace Expansions
- The following command will copy the file and append ```.backup``` to the end of the copy.
```bash
cp test.txt{,.backup}

# output
test.txt test.txt.backup
```
#### __Ranges w/ Brace Expansion__
```bash
mkdir log-{1..5}
 
#output
log-1/
log-2/
log-3/
log-4/
log-5/
```
- Also works w/ letters
```bash
echo {a..z}

# output
a b c d e f g h i j k l m n o p q r s t u v w x y z
```
- You can even create several directories or files with the same naming format:
```bash
mkdir -p log-{monday,tuesday,wednesday}

# output
log-monday/
log-tuesday/
log-wednesday/
```

### Create Directory Tree
```bash
mkdir -p a/b/c

# output
--a
  |
  |--b
     |
     |--c
```

