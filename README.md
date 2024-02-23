# ansibel部署k8s

## 剧本使用方法



## 剧本角色清单

目前实现的角色：software init containerd pki etcd lb master node cilium coredns app test

## 基础环境

剧本开发环境为：Open Euler22.03

https://linux.do/

| 主机名       | ip地址        | 说明       | 集群组件                                                     |
| ------------ | ------------- | ---------- | ------------------------------------------------------------ |
| Controller   | 192.168.12.30 | 控制节点   | ansible v2.9.27                                              |
| k8s-master01 | 192.168.12.31 | Master节点 | kube-apiserver v1.28.3、kube-controller-manager、kube-scheduler、etcd、kubelet、kube-proxy、nfs-client、haproxy、keepalived、containerd |
| k8s-master02 | 192.168.12.32 | Master节点 | kube-apiserver v1.28.3、kube-controller-manager、kube-scheduler、etcd、kubelet、kube-proxy、nfs-client、haproxy、keepalived、containerd |
| k8s-master03 | 192.168.12.33 | Master节点 | kube-apiserver v1.28.3、kube-controller-manager、kube-scheduler、etcd、kubelet、kube-proxy、nfs-client、haproxy、keepalived、containerd |
| k8s-node01   | 192.168.12.41 | Node节点   | kubelet、kube-proxy、nfs-client、containerd                  |
| k8s-node02   | 192.168.12.42 | Node节点   | kubelet、kube-proxy、nfs-client、containerd                  |
| VIP          | 192.168.12.39 | VIP地址    |                                                              |

### 网段

集群节点：192.168.12.0/24

service：10.96.0.0/12

pod：172.16.0.0/12

## 剧本执行顺序



## software角色 01

实现yum源配置，安装基础工具包

## init角色 02

实现基础配置内核修改等

## containerd角色 03

实现containerd容器运行时的安装

## pki角色 04

实现集群证书的生成与集群基本配置文件生成

## etcd角色 05

实现etcd集群的安装

## lb角色 06

使用haproxy与keepalived实现kube-apiserver的高可用

## master角色 07

实现Kubernetes控制平面的组件安装

## node角色 08

实现Kubernetes计算节点的组件安装

## cilium角色 09

实现cilium网络插件安装

## coredns角色 10

实现CoreDNS安装

## app角色 11

部署kubernetes应用（Metrics Server dashboard ingress）

## test角色 12

部署一个测试项目
