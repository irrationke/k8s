#!/bin/sh
VIP=$1
GATEWAY=192.168.56.1                                      #这个是本机的外网网卡网关地址
/sbin/arping -I eth0 -c 5 -s $VIP $GATEWAY &>/dev/null
