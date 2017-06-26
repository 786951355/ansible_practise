    yum install -y httpd
    sed -i 's/ServerTokens OS/ServerTokens Prod/' /etc/httpd/conf/httpd.conf
    sed -i 's/ServerSignature On/ServerSignature Off/' /etc/httpd/conf/httpd.conf
    sed -i '/#ServerName www.example.com:80/a\ServerName localhost' /etc/httpd/conf/httpd.conf
    sed -i 's/^Listen 80/Listen 8080/' /etc/httpd/conf/httpd.conf
    service httpd start
    chkconfig --add httpd
    chkconfig httpd --level 2345 on
