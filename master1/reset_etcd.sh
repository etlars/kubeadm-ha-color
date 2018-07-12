kubeadm reset -f
rm -rf /var/lib/etcd-cluster
docker-compose --file /root/kubeadm-ha/etcd/docker-compose.yaml stop
docker-compose --file /root/kubeadm-ha/etcd/docker-compose.yaml rm -f
docker-compose --file /root/kubeadm-ha/etcd/docker-compose.yaml up -d
docker exec -ti etcd etcdctl cluster-health
docker exec -ti etcd etcdctl member list
