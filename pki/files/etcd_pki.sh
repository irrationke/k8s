#!/bin/bash
Master='192.168.12.32 192.168.12.33'
for NODE in $Master; do
    ssh  -o StrictHostKeyChecking=no $NODE "mkdir -p /etc/etcd/ssl"
    for FILE in etcd-ca-key.pem etcd-ca.pem etcd-key.pem etcd.pem; do
        scp /etc/etcd/ssl/${FILE} $NODE:/etc/etcd/ssl/${FILE}
    done
done
