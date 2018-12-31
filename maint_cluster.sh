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
elif [ ${opt} -eq 3 ]; then
  echo "Reboot"
  cmd="sudo shutdown -r now"
elif [ ${opt} -eq 4 ]; then
  echo "Network Default Gateway"
  cmd="sudo route add default gw 192.168.1.1"
fi

for i in `seq 1 4`;
do
  ssh pi@pi${i} ${cmd}
done
