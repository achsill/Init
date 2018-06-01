#!/bin/bash

command=`find /var/spool/cron/crontabs/root -mtime -1 -ls`

if [ "$command" != "" ]
then
	echo "Subject: crontab file modified" | sudo sendmail -v hamzalouar@gmail.com
fi
