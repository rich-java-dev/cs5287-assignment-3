
sudo hostnamectl set-hostname master-node

# initialize cluster
sudo kubeadm init --node-name master-node --pod-network-cidr=10.244.0.0/16 --ignore-preflight-errors=all

# configure network
sudo kubectl --kubeconfig=/etc/kubernetes/admin.conf create -f https://docs.projectcalico.org/v3.14/manifests/calico.yaml

# create token for other nodes to join cluster
# sudo kubeadm token create --print-join-command

# taint master node
sudo kubectl taint master-node node-role.kubernetes.io/master:NoSchedule-

# mkdir -p makes the command idemponent, or not failing/changing if ran more than once.
mkdir -p ~/app
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config