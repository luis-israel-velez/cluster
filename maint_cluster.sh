#!/bin/bash

#Let's have fun!!!


#TODO Fix to work detecting non integer parameters
if [[ $# -ne 1 || "$1" = ^-?[0-9]+$ ]]; then
  echo "Ups this is not right! What option?? More than one param? Is it a integer?"
  exit 1
fi

opt=$1

if [ ${opt} -eq 1 ]; then
  echo "Updating"
  cmd="sudo apt-get update"
elif [ ${opt} -eq 2 ]; then
  echo "Shutdown"
  cmd="sudo shutdown -h now"
else
  echo "Ups this is not right, don't understand that option"
fi

for i in `seq 1 4`;
do
  ssh pi@pi${i} ${cmd}
done
