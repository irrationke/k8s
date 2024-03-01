#!/bin/bash

ectl='etcdctl --endpoints="192.168.12.33:2379,192.168.12.32:2379,192.168.12.31:2379" --cacert=/etc/kubernetes/pki/etcd/etcd-ca.pem --cert=/etc/kubernetes/pki/etcd/etcd.pem --key=/etc/kubernetes/pki/etcd/etcd-key.pem'

function health()
{
	etcdctl --endpoints='192.168.12.31:2379,192.168.12.32:2379,192.168.12.33:2379' \
		      --cacert=/etc/kubernetes/pki/etcd/etcd-ca.pem \
		      --cert=/etc/kubernetes/pki/etcd/etcd.pem \
		      --key=/etc/kubernetes/pki/etcd/etcd-key.pem \
		      endpoint health
}

function list()
{
	etcdctl --endpoints='192.168.12.31:2379,192.168.12.32:2379,192.168.12.33:2379' \
          --cacert=/etc/kubernetes/pki/etcd/etcd-ca.pem \
          --cert=/etc/kubernetes/pki/etcd/etcd.pem \
          --key=/etc/kubernetes/pki/etcd/etcd-key.pem \
		      member list
}

function status()
{
	etcdctl --endpoints='192.168.12.31:2379,192.168.12.32:2379,192.168.12.33:2379' \
          --cacert=/etc/kubernetes/pki/etcd/etcd-ca.pem \
          --cert=/etc/kubernetes/pki/etcd/etcd.pem \
          --key=/etc/kubernetes/pki/etcd/etcd-key.pem \
	        endpoint status -w table
}

function tes()
{
  $ectl endpoint status -w table
}

if [[ $1 == "health" ]];then
	health
elif [[ $1 == "list" ]];then
	list
elif [[ $1 == "status" ]];then
	status
else
	tes
fi
