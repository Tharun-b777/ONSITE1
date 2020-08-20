#!/bin/bash
read -p "Enter column name with values (roll: 999)"
value=($REPLY)
grep "${value[1]}" merge2.txt
