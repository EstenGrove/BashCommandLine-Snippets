#!/bin/bash

# This will create 10 blank ".txt" files with the format of: test-1.txt, test-2.txt, test-3.txt etc...
for i in $(seq 10)
do
  touch "test-$i".txt
done

######## ONE-LINER VERSION
for i in $(seq 10); do touch "test-$i".txt; done


# To delete those files
for i in $(seq 10); do rm -rf "test-$i".txt; done


# To add content to a set of files
for i in $(seq 10); do echo "File Number $i" > "test-$i".txt; done
