# kubeadm-ha-color
cookeem/kubeadm-ha setting up for k8s v1.11.0 version

     
KVM (virt-manager)  
     |      \------ master1      : 192.168.122.225  : etcd
     |      \------ master2      : 192.168.122.248  : etcd
     |      \------ worker1      : 192.168.122.240  : etcd
     |      \------ lb (haproxy) : 192.168.122.85
     |
hostmachine (centos7) 
  70.60.32.218 ---- ansible
