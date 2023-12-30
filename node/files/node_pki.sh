#!/bin/bash

cd /etc/kubernetes/

for NODE in k8s-master02 k8s-master03 k8s-node01 k8s-node02; do
    ssh $NODE mkdir -p /etc/kubernetes/pki
    for FILE in pki/ca.pem pki/ca-key.pem pki/front-proxy-ca.pem bootstrap-kubelet.kubeconfig kube-proxy.kubeconfig; do
        scp /etc/kubernetes/$FILE $NODE:/etc/kubernetes/${FILE}
    done
done
