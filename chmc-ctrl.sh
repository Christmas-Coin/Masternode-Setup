#!/bin/bash

if [[ $USER != "root" ]]; then 
		echo "This script must be run as root!" 
		exit 1
fi

usage="./chmc-ctrl.sh [arguments]"
VERBOSE=true
counter="0"

while getopts 'abcdefghklm?' option
do
  case "$option" in
  a) systemctl start christmascoin
     systemctl is-active christmascoin
     ((counter+=1))
     ;;
  b) systemctl stop christmascoin
     systemctl is-active christmascoin
     ((counter+=1))
     ;;
  c) systemctl status christmascoin
     ((counter+=1))
     ;;
  d) systemctl is-enabled christmascoin
     ((counter+=1))
     ;;
  e) christmascoin-cli mnsync status
     ((counter+=1))
     ;;
  f) christmascoin-cli masternode debug
     ((counter+=1))
     ;;
  g) christmascoin-cli getblockcount
     ((counter+=1))
     ;;  
  h) $usage
     ((counter+=1))
     ;; 
  k) ufw status
     ((counter+=1))
     ;;
  l) cat .christmascoin/christmascoin.conf
     ((counter+=1))
     ;;
  m) more /var/log/ufw.log
     ((counter+=1))
     ;;
  ?) $usage
     exit 0
     ;;
  esac
done

if [ $counter -eq 1 ];then
  exit 0
else
  echo $usage
  exit 1
fi