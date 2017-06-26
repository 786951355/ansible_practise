#!/bin/bash
#
log=/home/data/mysql/logs/error.log
if [[ `grep 'temporary password' $log` -eq 1 ]];then 
    temperory_password=`grep 'temporary password' $log |awk -F ': ' '{print $NF}' |sed 's/ //g'`
    echo ${temperory_password} > /root/mysql_tmppass.log
else
    temperory_password=`grep 'temporary password' $log |sed -n '$p'|awk -F ': ' '{print $NF}' |sed 's/ //g'`
    echo ${temperory_password} > /root/mysql_tmppass.log
fi
