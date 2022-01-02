#!/bin/sh

for x in `readelf -d "$1" |grep NEEDED|awk -F'[\[\]]' '{print $2}'` ; do dpkg -S $x|grep amd64|awk -F: '{print $1}' ;done|sort|uniq

