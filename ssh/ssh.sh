#!/bin/bash
#ssh-keygen -f /root/.ssh/id_rsa -P ''
export IP="192.168.12.31 192.168.12.32 192.168.12.33 192.168.12.41 192.168.12.42"
export SSHPASS=klx-=890
for HOST in $IP;do
     sshpass -e ssh-copy-id -o StrictHostKeyChecking=no $HOST
done
