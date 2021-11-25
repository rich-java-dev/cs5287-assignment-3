# main kubernetes services/deployment script file
cd ~/app

# create services
kubectl create -f zookeeper-svc.yaml
kubectl create -f kafka-svc.yaml
kubectl create -f kafka-svc2.yaml
kubectl create -f couchdb-svc.yaml

# create deployments
kubectl create -f zookeeper-deploy.yaml
kubectl create -f kafka-deploy.yaml
kubectl create -f kafka-deploy2.yaml
kubectl create -f couchdb-deploy.yaml
kubectl create -f consumer-deploy.yaml
kubectl create -f consumer-deploy2.yaml