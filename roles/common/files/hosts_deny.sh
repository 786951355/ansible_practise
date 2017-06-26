#!/bin/bash

cat > /etc/hostsdeny.sh <<EOF
#!/bin/bash
#deny unkonw ssh login
#script file path /etc/hostsdeny.sh

lastb |awk '/notty/{print \$3}'|sort |uniq -c |awk '{if(\$1>10) {print "sshd"":"\$2}}' >> /etc/hosts.deny && echo "" > /var/log/btmp
EOF
chmod +x /etc/hostsdeny.sh

cat > /etc/hostsdeny_clear.sh <<EOF
#!/bin/bash
#cldar old ssh ip in /etc/hosts.deny
#script file in /etc/hostsdeny_clear.sh

sed -i '/^ssh.*/d' /etc/hosts.deny
EOF
