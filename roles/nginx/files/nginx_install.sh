#!/bin/bash
#

groupadd nginx && useradd -g nginx -s /sbin/nologin -M nginx
cd /tmp && tar xf nginx.tar.gz
cd nginx-1.12.0
./configure --prefix=/usr/local/nginx --user=nginx --group=nginx --with-http_ssl_module --with-http_flv_module --with-http_stub_status_module --with-http_gzip_static_module --with-pcre --with-ipv6
make
make install

