#!/bin/bash

db_name=w3stream
password=Biggboss1
target=saadevops@192.168.1.11:/Users/saadevops
sqlfile=/home/backup/backup-$(date +%d-%m-%Y_%H-%M-%S).sql
if pg_dump -h 127.0.0.1 -U postgres $db_name > $sqlfile ; then
   echo 'Sql dump created'
   echo $sqlfile
else
   echo 'ERROR'
   exit
fi
if sshpass -p $password scp $sqlfile  $target ; then
  echo 'Copied to...'
  echo $target
else
  echo 'ERROR'
  exit
fi
