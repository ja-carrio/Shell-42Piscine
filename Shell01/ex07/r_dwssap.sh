#!/bin/bash
cat /etc/passwd | grep -v '#' | sed -n 'n;p' | cut -f 1 -d : | rev | sort -r | awk 'NR>=ENVIRON["FT_LINE1"] && NR<=ENVIRON["FT_LINE2"]' | tr '\n' ' ' | sed 's/ /, /g' | sed 's/, $/./' | tr -d '\n'
