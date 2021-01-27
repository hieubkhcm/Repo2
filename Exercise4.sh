#!/bin/bash

FILE=/home/pi/Junk/Exercise1.sh

if [ -e $FILE ]
then
  echo "$FILE is exist"
fi

if [ -x $FILE ]
  then
    echo "You have permission to execute $FILE "  
  else
    echo "You do not have permission to execute the $FILE" 
fi
