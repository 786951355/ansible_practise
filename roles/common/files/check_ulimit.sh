#!/bin/bash

grep -v '^#' /etc/security/limits.conf |grep -q '^*'
if [ $? -eq 0 ];then
   :
else
cat >> /etc/security/limits.conf <<EOF
* soft nproc 65535  
* hard nproc 65535  
* soft nofile 65535  
* hard nofile 65535  
EOF
fi
