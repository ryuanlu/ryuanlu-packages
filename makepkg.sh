#!/bin/sh

test -e "$1/DEBIAN/control" || exit 1
NAME=`echo $1 |sed 's,/,,g'`
fakeroot dpkg-deb -b ${NAME} ${NAME}_`grep Version ${NAME}/DEBIAN/control|cut -c10-`_`grep Architecture ${NAME}/DEBIAN/control|cut -c15-`.deb

