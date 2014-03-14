#!/bin/bash
FILE=/tmp/time_done

if [ -f $FILE ]
then
	echo "File $FILE exists..."
else
    cd /etc
    rm localtime
    ln -s /usr/share/zoneinfo/Europe/Berlin localtime
    ntpd -q
    touch /tmp/time_done
fi
