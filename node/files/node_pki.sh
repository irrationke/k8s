#!/bin/bash

cd /etc/kubernetes/

for NODE in 192.168.12.32 192.168.12.33 192.168.12.41 192.168.12.42; do
    ssh $NODE mkdir -p /etc/kubernetes/pki
    for FILE in pki/ca.pem pki/ca-key.pem pki/front-proxy-ca.pem bootstrap-kubelet.kubeconfig kube-proxy.kubeconfig; do
        scp /etc/kubernetes/$FILE $NODE:/etc/kubernetes/${FILE}
    done
done
