#!/bin/bash
cd /etc
rm localtime
ln -s /usr/share/zoneinfo/Europe/Berlin localtime
ntpd -q
touch /tmp/time_done
