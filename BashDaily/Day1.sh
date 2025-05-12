#!/bin/bash

export PATH="/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:$PATH"
FILE_PATH="$HOME/Documents/Code/Bash/100DaysofBash/BashDaily/"
COUNT_PATH="$FILE_PATH/Counter.txt"

if [ ! -f "$COUNT_PATH" ];then
 touch "$COUNT_PATH"
fi 

CURRENT=$(cat "$COUNT_PATH")
NEXT=$((CURRENT + 1))

if [ "$NEXT" -lt 100 ]; then
 echo "$NEXT" > "$COUNT_PATH"
 /opt/homebrew/bin/msmtp  dimitricromarty@gmail.com < "$COUNT_PATH"
else
 exit 0
fi

