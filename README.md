# ansibel部署k8s

## 本文主要记录各个角色实现的功能

目前实现的角色：dnf init containerd pki etcd lb master node cilium coredns app test

## 基础环境

openEuler22.03

### dnf角色 01

实现yum源配置，安装基础工具包

### init角色 02

实现基础配置内核修改等

### containerd角色 03

实现containerd容器运行时的安装

### pki角色 04

实现集群证书的生成与集群基本配置文件生成

### etcd角色 05

实现etcd集群的安装

### lb角色 06

使用haproxy与keepalived实现kube-apiserver的高可用

### master角色 07

实现Kubernetes控制平面的组件安装

### node角色 08

实现Kubernetes计算节点的组件安装

### cilium角色 09

实现cilium网络插件安装

### coredns角色 10

实现CoreDNS安装

### app角色 11

部署kubernetes应用（Metrics Server dashboard ingress）

### test角色 12

部署一个测试项目
