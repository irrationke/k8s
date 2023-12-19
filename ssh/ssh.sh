#!/bin/bash
ssh-keygen -f /root/.ssh/id_rsa -P ''
export IP="192.168.56.101 192.168.56.102 192.168.56.111"
export SSHPASS=klx-=890
for HOST in $IP;do
     sshpass -e ssh-copy-id -o StrictHostKeyChecking=no $HOST
done
