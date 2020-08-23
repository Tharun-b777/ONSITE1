#!/bin/bash
sort -k 3 file1.txt >merge.txt
(paste -d ' ' merge.txt <(sort -k 2 file2.txt | cut -d ' ' -f 1)) > merge2.txt
rm merge.txt
sort -k 2 merge2.txt > tmp && mv tmp merge2.txt
(paste -d' ' merge2.txt <(sort -k 1 file3.txt)) > tmp && mv tmp merge2.txt
awk '{print $1," ",$3," ",$4," ",$5," ",$6," ",$7 }' merge2.txt >tmp && mv tmp merge2.txt
