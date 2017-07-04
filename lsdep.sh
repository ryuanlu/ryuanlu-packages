#!/bin/sh

for x in `readelf -d "$1" |grep NEEDED|awk -F'[\[\]]' '{print $2}'` ; do dpkg -S $x|awk -F: '{print $1}' ;done|sort|uniq

