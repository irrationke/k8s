#!/bin/bash
for NODE in k8s-master02 k8s-master03; do
    for FILE in $(ls /etc/kubernetes/pki | grep -v etcd); do scp /etc/kubernetes/pki/${FILE} $NODE:/etc/kubernetes/pki/${FILE}; done
    for FILE in admin.kubeconfig controller-manager.kubeconfig scheduler.kubeconfig; do scp /etc/kubernetes/${FILE} $NODE:/etc/kubernetes/${FILE}; done
done
