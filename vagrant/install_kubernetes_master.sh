
sudo hostnamectl set-hostname master-node

# initialize cluster
sudo kubeadm init --node-name master-node --pod-network-cidr=10.244.0.0/16 --ignore-preflight-errors=all

# configure network
sudo kubectl --kubeconfig=/etc/kubernetes/admin.conf create -f https://docs.projectcalico.org/v3.14/manifests/calico.yaml

# create token for other nodes to join cluster
# sudo kubeadm token create --print-join-command

# taint master node
sudo kubectl taint node mymasternode node-role.kubernetes.io/master:NoSchedule-

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config