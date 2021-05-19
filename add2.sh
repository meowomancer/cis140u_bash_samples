#! /bin/bash
if [ -z $1 ] 
then
  echo "$0: Error! Not enough arguments."
  echo "Usage: ./add2.sh <a> <b>"
  exit 1
fi
if [ -z $2 ] 
then
  echo "$0: Error! Not enough arguments."
  echo "Usage: ./add2.sh <a> <b>"
  exit 1
fi
if [ "$3" != "" ] 
then
  echo "$0: Error! Too many arguments."
  echo "Usage: ./add2.sh <a> <b>"
  exit 1
fi
echo $(($1 + $2))

