#!/bin/bash
echo $0 $1
echo "  "
var= `df -h|head -2|tail -1|cut -d ' ' -f8`
echo "Total disk space: $var"

var1=`df -h|head -2|tail -1|cut -d ' ' -f14`

echo "Available Disk : $var1"

if [  $var1 -gt  $1 ]; then
echo "****************************************************************"
echo "ALERT: Dev1.devopscave.com has disk space 17GB which is > $1GB"
echo "****************************************************************"

else
echo "*********************************************************************"
echo "ALERT:ALERT: Dev1.devopscave.com has disk space 17GB which is < $1GB"
echo "*********************************************************************"
exit 1
fi
