#!/bin/bash
for NODE in 192.168.12.32 192.168.12.33 192.168.12.41 192.168.12.42; do
    for FILE in $(ls /etc/kubernetes/pki | grep -v etcd); do
        scp /etc/kubernetes/pki/${FILE} $NODE:/etc/kubernetes/pki/${FILE}
    done
    for FILE in admin.kubeconfig controller-manager.kubeconfig scheduler.kubeconfig; do
        scp /etc/kubernetes/${FILE} $NODE:/etc/kubernetes/${FILE}
    done
done
