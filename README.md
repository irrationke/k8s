# ansibel部署k8s

## 本文主要记录各个角色实现的功能

目前实现的角色：dnf init containerd pki etcd lb master node cilium coredns

### dnf角色

实现yum源配置，安装基础工具包，

### init角色

实现基础配置内核修改等

### containerd角色

实现containerd容器运行时的安装

### pki角色

实现集群证书的生成与集群基本配置文件生成

### etcd角色

实现etcd集群的安装

### lb角色

使用haproxy与keepalived实现kube-apiserver的高可用

### master角色

实现Kubernetes控制平面的组件安装

### node角色

实现Kubernetes计算节点的组件安装

### cilium角色

实现cilium网络插件安装

### coredns角色

实现CoreDNS安装
