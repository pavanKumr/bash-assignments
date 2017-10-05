#!/bin/bash
echo "Generating Stats for dev1.devopscave.com"
echo "****************************************************"
echo "Server Name: dev1.devopscave.com"
echo "OS Details: "
echo "---------------"
echo "OS Type:` uname`"
echo "OS Flover: `cat /etc/redhat-release | awk '{print $1}'`"
echo "OS Version: `cat /etc/redhat-release | awk '{print $4}' `"
echo "32 bit or 64 bit:  `uname -p`"

echo "CPU Details:"

echo "-----------"

echo "CPU vendor: `cat /proc/cpuinfo | grep vendor | uniq`"

echo "Number of Processors: `grep -c processor /proc/cpuinfo`"

echo "Model Name: `cat /proc/cpuinfo | grep 'model name' | uniq    `"

core1=`grep -c processor /proc/cpuinfo`

core2=`less /proc/cpuinfo|grep cpu|head -3|tail -1| awk '{print $4}'`

echo "Total number of Cores: $((core1*core2)) "

echo "Memory Details: "

echo "-----------"

echo "Total Memory :` free|head -2|tail -1| awk '{print $2}'`"

echo "Memory Avaliable:` free|head -2|tail -1| awk '{print $4}'`"

echo "Memory Used:` free|head -2|tail -1| awk '{print $3}'`  "

echo "Total Swap memory:`free|head -3|tail -1 | awk '{print $2}'` "

echo "Disk Details: "

echo "---------------"

echo "Total Disk space:`df -h|head -2|tail -1|cut -d ' ' -f8`  "

echo "Disk Space avaliable:`df -h|head -2|tail -1|cut -d ' ' -f14`   "

echo "Disk Space Used:`df -h|head -2|tail -1|cut -d ' ' -f11`  "

echo "Usage Percentage:`df -h|head -2|tail -1|cut -d ' ' -f16` "

echo "User Details:"

echo "---------"

echo "Total Number of Users: `wc /etc/passwd | awk '{print $1}'` "

echo "Total Number of real Users: `cat /etc/passwd|grep bin/bash| wc -l `"
