#!/bin/bash
k8s='192.168.12.32 192.168.12.33'
for NODE in $k8s; do
    for FILE in $(ls /etc/kubernetes/pki | grep -v etcd); do
        scp -o StrictHostKeyChecking=no /etc/kubernetes/pki/${FILE} $NODE:/etc/kubernetes/pki/${FILE}
    done
    for FILE in admin.kubeconfig controller-manager.kubeconfig scheduler.kubeconfig; do
        scp -o StrictHostKeyChecking=no /etc/kubernetes/${FILE} $NODE:/etc/kubernetes/${FILE}
    done
done
