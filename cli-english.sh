#! /bin/bash

# Get word list file:
curl -o /tmp/clienglishwordlist https://gnuadm.in/eng.md 2> /dev/null

# Get word count:
wordcount=$(cat /tmp/clienglishwordlist | wc -l)

# Get random wordID:
wordid=$((1 + $RANDOM % ${wordcount}))
