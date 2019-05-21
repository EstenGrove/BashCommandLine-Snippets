#!/bin/bash

# This will create ten .txt files like: test-1.txt, test-2.txt, test-3.txt etc
for i in $(seq 10)
do
  touch "test-$i".txt
done
