#!/bin/bash
tail -100 /var/log/secure | awk '/Failed password for root/{print $(NF-3)}' | sort | uniq -c | sort -nr | awk '{print $2"="$1}' > /root/ssh_black.list
DEFINE="5"
for i in `cat /root/ssh_black.list`
    do
       IP=`echo $i | awk -F= '{print $1}'`
       NUM=`echo $i | awk -F= '{print $2}'`
       if [ $NUM -gt $DEFINE ]; then
           grep $IP /etc/hosts.deny > /dev/null
             if [ $? -gt 0 ]; then
             echo "sshd:$IP:deny" >> /etc/hosts.deny
             fi
       fi
     done
ALLOW_IP=`ping -c 3 -w 2 hwt_hello.f3322.net | head -1 | awk "-F(" '{print $2}' | awk "-F)" '{print $1}'`
if ! grep -q $ALLOW_IP /etc/hosts.allow;then sed -i  "13csshd:$ALLOW_IP:allow" /etc/hosts.allow; fi
