#!/bin/bash
read -p "Enter column name with values (roll: 999)"
a=($REPLY)
grep "${a[1]}" merge2.txt
