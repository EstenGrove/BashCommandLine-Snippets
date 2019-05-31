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

# now there will be two files: the original (test.txt) and the copy (test.txt.backup)
```
