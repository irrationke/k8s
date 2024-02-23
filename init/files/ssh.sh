#!/bin/bash
if [ -e /root/.ssh/id_rsa ]; then
     echo "id_rsa已存在"
else
     ssh-keygen -f /root/.ssh/id_rsa -P ''
fi
# 此处IP为Kubernetes集群的所有节点IP
export IP="192.168.12.31 192.168.12.32 192.168.12.33 192.168.12.41 192.168.12.42"
# 此处的密码为root的密码
export SSHPASS=klx-=890
for HOST in $IP; do
     sshpass -e ssh-copy-id -o StrictHostKeyChecking=no $HOST
done
