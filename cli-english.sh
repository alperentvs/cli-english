#! /bin/bash

wlfile="/tmp/clienglishwordlist"

#Get word list file:
if [[ ! -f ${wlfile} ]]
then
	curl -o ${wlfile} https://gnuadm.in/eng.md 2> /dev/null
fi

#Get word count:
wordcount=$(cat /tmp/clienglishwordlist | wc -l)

#Get random wordID:
wordid=$((1 + $RANDOM % ${wordcount}))

#Get random word:
randomword=$(cat ${wlfile} | sed -n "${wordid}p")
