#!/bin/bash
#practice.sh
# This is a test script

myDir='/home/erik/.config/'

dirOptions=$(cd ${myDir} && ls -d */ | cut -d " " -f 1)
dirChoice=$(echo -e "${dirOptions[@]}\nquit" | dmenu -i -p 'My Config Direstories')

if [ "$dirChoice" == "quit" ]; then
  echo "Program Terminated"
elif [ "$dirChoice" == ${dirChoice} ]; then
  fileOptions=$(cd ${myDir}${dirChoice} && /bin/ls -Ap |cut -d " " -f 1 | grep -v /)
  fileChoice=$(echo -e "${fileOptions[@]}" | dmenu -i -l 15 -p 'Edit This File: ')
  exec /usr/bin/geany ${myDir}${dirChoice}${fileChoice}
fi

