#!/bin/bash

if [ ! -f /etc/init.d/redis ];then
	mkdir /app/redis
	mkdir /var/log/redis
	cd /tmp/ && /bin/tar xf redis.tar.gz
	cd redis-3.0.7
	make
	mkdir /usr/local/redis
	cp src/{redis-server,redis-cli,redis-benchmark,redis-sentinel,redis-check-aof,redis-check-dump} /usr/local/redis
else
	echo "redis has been installed"
fi
