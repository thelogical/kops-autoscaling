sudo apt-get update
sudo apt-get install -y git build-essential python-dev python-pip python-setuptools python-virtualenv libffi-dev libssl-dev  python3-pip
git clone https://github.com/trailofbits/algo.git
cd algo
python3 -m virtualenv --python=$(which python3) env &&       source env/bin/activate &&      python3 -m pip install -U pip virtualenv &&       python -m pip install -r requirements.txt
python3 -m virtualenv --python=$(which python3) env &&       source env/bin/activate &&      python3 -m pip install -U pip virtualenv &&       python3 -m pip install -r requirements.txt
vim config.cfg
sudo systemctl disable systemd-resolved
sudo systemctl stop systemd-resolved
sudo unlink /etc/resolv.conf
sudo echo "nameserver 8.8.8.8" > /etc/resolv.conf
sudo su
./algo
ls
cd configs/
ls
cd 52.40.223.126/
ls
cd wireguard/
ls
cd ..
cd ipsec/
ls
cd apple/
ls
cat admin.mobileconfig 
cd ..
ls
cd wireguard/
ls
exit
ipconfig
ifconfig | grwp w0
ifconfig | grep w0
ifconfig | grep wo
ifconfig
exit
ls
cd algo
ls
exit
ls
exit
curl -Lo kops https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
du -h kops 
chmod +x ./kops
sudo mv ./kops /usr/local/bin/
hostbame -i
hostname -i
hostname -I
vim /etc/hosts
sudo vim /etc/hosts
curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
pip install awscli
export NAME=mycluster.k8s.local
sudo apt-get install awscli
curl -s http://169.254.169.254/latest/dynamic/instance-identity/document|grep region|awk -F\" '{print $4}
curl -s http://169.254.169.254/latest/dynamic/instance-identity/document|grep region|awk -F\" '{print $4}'
ssh-keygen
export KOPS_STATE_STORE=s3://devops-02-kops-state2
export REGION=`curl -s http://169.254.169.254/latest/dynamic/instance-identity/document|grep region|awk -F\" '{print $4}'
export REGION=`curl -s http://169.254.169.254/latest/dynamic/instance-identity/document|grep region|awk -F\" '{print $4}'`
.. code-block:: bash
export ZONES=$(aws ec2 describe-availability-zones --region $REGION | grep ZoneName | awk '{print $2}' | tr -d '"')
kops create cluster $NAME   --zones "$ZONES"   --authorization RBAC   --master-size t2.micro   --master-volume-size 10   --node-size t2.medium   --node-volume-size 10 \
kops edit instancegroups nodes
wget https://spotinst-public.s3.amazonaws.com/integrations/kubernetes/kops/v1.11.0/scripts/kops.tar.gz
ls
gunzip kops.tar.gz 
ls
tar -xvf kops.tar 
cd kops
ls
vim 00-env.sh 
cd ..
kops get instacnegroups
kops get instancegroups
kops create cluster $NAME   --zones "$ZONES"   --authorization RBAC   --master-size t2.micro   --master-volume-size 10   --node-size t2.medium   --node-volume-size 10 --yes
kops validate clutser

kops validate cluster
kubectl get nodes
ls
kops edit instancegroups nodes
kops get instancegroups
kops update cluster
kops update cluster --yes
kops rolling-update cluster
kops rolling-update cluster --yes
kops delete cluster
kops get instancegroups
kops get clusters
kops delete clutsters mycluster.k8s.local
kops delete clusters mycluster.k8s.local
kops delete cluster mycluster.k8s.local
kops delete cluster mycluster.k8s.local --yes
echo $NAME
export NAME=user1.k8s.local
export KOPS_STATE_STORE=s3://devops-02-kops-state2
export REGION=`curl -s http://169.254.169.254/latest/dynamic/instance-identity/document|grep region|awk -F\" '{print $4}'`
.. code-block:: bash
export ZONES=$(aws ec2 describe-availability-zones --region $REGION | grep ZoneName | awk '{print $2}' | tr -d '"')
kops create cluster $NAME   --zones "$ZONES"   --authorization RBAC   --master-size t2.micro   --master-volume-size 10   --node-size t2.medium   --node-volume-size 10 \
kops --help
vim cluster.yaml
kops create clutser --config cluster.yaml 
kops create --help
kops create cluster --help
kops create cluster --config cluster.yaml 
kops create cluster --config cluster.yaml --name user1.k8s.local
kops create cluster $NAME   --zones "$ZONES"   --authorization RBAC   --master-size t2.micro   --master-volume-size 10   --node-size t2.micro   --node-volume-size 10 --node-count 1 --dry-run
kops create cluster $NAME   --zones "$ZONES"   --authorization RBAC   --master-size t2.micro   --master-volume-size 10   --node-size t2.micro   --node-volume-size 10 --node-count 1 --dry-run --output out.txt
export ZONES=$(aws ec2 describe-availability-zones --region $REGION | grep ZoneName | awk '{print $2}' | tr -d '"')
echo $ZONES
echo $REGION
kops create cluster $NAME   --zones "$ZONES"   --authorization RBAC   --master-size t2.micro   --master-volume-size 10   --node-size t2.micro   --node-volume-size 10 --node-count 1
ls
rm -rf cluster.yaml 
ls
kops create cluster $NAME   --zones "$ZONES"   --authorization RBAC   --master-size t2.micro   --master-volume-size 10   --node-size t2.micro   --node-volume-size 10 --node-count 1
kops create cluster $NAME   --zones "$ZONES"   --authorization RBAC   --master-size t2.micro   --master-volume-size 10   --node-size t2.micro   --node-volume-size 10 --node-count 1 --yes
export REGION=`curl -s http://169.254.169.254/latest/dynamic/instance-identity/document|grep region|awk -F\" '{print $4}'
`
echo $REGION
echo $ZONES
export $ZONES=us-west-2a
export $ZONES="us-west-2a"
export ZONES=us-west-2a
echo $ZONES
kops create cluster $NAME   --zones "$ZONES"   --authorization RBAC   --master-size t2.micro   --master-volume-size 10   --node-size t2.medium   --node-volume-size 10 \
kops create cluster $NAME   --zones "$ZONES"   --authorization RBAC   --master-size t2.micro   --master-volume-size 10   --node-size t2.medicro   --node-volume-size 10 --node-count 1 --yes
kops create cluster $NAME   --zones "$ZONES"   --authorization RBAC   --master-size t2.micro   --master-volume-size 10   --node-size t2.micro   --node-volume-size 10 --node-count 1 --yes
kops validate clutser
kops validate cluster
kubectl get nodes
cd ./ssh/
cd ./ssh
cd .ssh/
ls
vim authorized_keys 
cd ..
kops validate cluster
kops edit instancegroups nodes
kops get instancegroups
kops edit instancegroups master-us-west-2a
kps update cluster
kops update cluster
kops update cluster --yes
kps rolling-update cluster
kops rolling-update cluster
kops rolling-update cluster --yes
kops delete cluster
kops delete cluster --name user1.k8s.local
kops delete cluster --name user1.k8s.local --yes
vim clutser..yaml
vim cluster.yaml
kops apply -f cluster.yaml 
kops create -f cluster.yaml 
vim cluster.yaml 
kops create -f cluster.yaml 
kops create cluster $NAME     --zones "us-east-2a,us-east-2b,us-east-2c"     --master-zones "us-east-2a,us-east-2b,us-east-2c"     --networking weave     --topology private     --bastion     --node-count 3     --node-size m4.xlarge     --kubernetes-version v1.6.6     --master-size m4.large     --vpc vpc-6335dd1a     --dry-run \
kops create cluster $NAME     --zones "us-east-2a,us-east-2b,us-east-2c"     --master-zones "us-east-2a,us-east-2b,us-east-2c"     --node-count 1     --node-size m4.xlarge     --kubernetes-version v1.6.6     --master-size m4.large      --dry-run  -o yaml > $NAME.yaml
vim $NAME.yaml
kops create cluster --zones="$ZONES" user1.k8s.local
kops edit cluster $NAME
kops create cluster $NAME     --zones "us-east-2a,us-east-2b,us-east-2c"     --master-zones "us-east-2a,us-east-2b,us-east-2c"     --node-count 1     --node-size m4.xlarge     --kubernetes-version v1.6.6     --master-size m4.large      --dry-run  -o yaml > $NAME.yaml
kops delete cluster --name user1.k8s.local --yes
kops create cluster $NAME     --zones "us-east-2a,us-east-2b,us-east-2c"     --master-zones "us-east-2a,us-east-2b,us-east-2c"     --node-count 1     --node-size m4.xlarge     --kubernetes-version v1.6.6     --master-size m4.large      --dry-run  -o yaml > $NAME.yaml
vim $NAME.yaml
kops delete cluster --name user1.k8s.local --yes
vim $NAME.yaml
kops create cluster $NAME     --zones "us-east-2a"     --master-zones "us-east-2a"     --node-count 1     --node-size m4.xlarge     --kubernetes-version v1.6.6     --master-size m4.large      --dry-run  -o yaml > $NAME.yaml
vim $NAME.yaml
kops create -f $NAME.yaml
kops update cluster user1.k8s.local --yes
kops create cluster $NAME     --zones "us-east-2a"     --master-zones "us-east-2a"     --node-count 1     --node-size m4.xlarge     --kubernetes-version v1.11.10     --master-size m4.large      --dry-run  -o yaml > $NAME.yaml
kops delete cluster user1.k8s.local
kops delete cluster user1.k8s.local --yes
kops create cluster $NAME     --zones "us-east-2a"     --master-zones "us-east-2a"     --node-count 1     --node-size m4.xlarge     --kubernetes-version v1.11.10     --master-size m4.large      --dry-run  -o yaml > $NAME.yaml
kops create -f $NAME.yaml
kops delete cluster user1.k8s.local --yes
kops create cluster $NAME     --zones "us-east-2a"     --master-zones "us-east-2a"     --node-count 1     --node-size m4.xlarge     --kubernetes-version v1.11.10     --master-size m4.large      --dry-run  -o yaml > $NAME.yaml
kops create -f $NAME.yaml
kops update cluster user1.k8s.local --yes
kops create secret --name $NAME sshpublickey admin -i ~/.ssh/id_rsa.pub
kops update cluster $NAME --yes
kops rolling-update cluster $NAME --yes
kops delete cluster $NAME
kops delete cluster $NAME --yes
kops create cluster $NAME     --zones "us-east-2a"     --master-zones "us-east-2a"     --node-count 1     --node-size m4.xlarge     --kubernetes-version v1.11.10     --master-size m4.large      --dry-run  -o yaml > $NAME.yaml
vim user1.k8s.local.yaml 
kops create -f $NAME.yaml
kops create secret --name $NAME sshpublickey admin -i ~/.ssh/id_rsa.pub
kops update cluster $NAME --yes
kops rolling-update cluster $NAME --yes
vim user1.k8s.local.yaml 
kops update cluster $NAME --yes
kops rolling-update cluster $NAME --yes
kubectl get nodes
kops list intancegroups
kops get intancegroups
ping 172.31.26.67
kubectl get nodes
kops validate cluster
kubectl get nodes
aws ec2 describe instances
aws ec2 describe instances availibility-zone us-east-2
aws ec2 describe-instances
aws ec2 describe-instances -
aws ec2 describe-instances --availibility-zone us-west-2
aws ec2 describe-instances --instance-ids a.masters.user1.k8s.local
aws ec2 describe-instances --instance-ids i-01e5b583c1d53f07e
aws ec2 describe | grep zone
aws ec2 describe-instances --instance-ids i-01e5b583c1d53f07e refion us-west-2
aws ec2 describe-instances --instance-ids i-01e5b583c1d53f07e --region us-west-2
aws ec2 describe-instances --instance-ids i-01e5b583c1d53f07e --region us-east-2
aws ec2 describe-instances --instance-ids i-01e5b583c1d53f07e --region us-east-2 --output table
aws ec2 describe-instances --instance-ids i-01e5b583c1d53f07e --region us-east-2 --query 'Reservations[].Instances[].{--output table
      SpotReq: SpotInstanceRequestId, 
      Id: InstanceId, 
aws ec2 describe-instances --instance-ids i-01e5b583c1d53f07e --region us-east-2  --query 'Reservations[].Instances[].{SpotReq: SpotInstanceRequestId,  Id: InstanceId, Name: Tags[?Key==`Name`].Value|[0]}' --output table
aws ec2 describe-instances --instance-ids i-0ebc6458e8c28709e --region us-west-2 --output table
aws ec2 describe-instances --instance-ids i-0ebc6458e8c28709e --region us-west-2 -query 'Reservations[].Instances[].{SpotReq: SpotInstanceRequestId,  Id: InstanceId, Name: Tags[?Key==`Name`].Value|[0]}' --output table
aws ec2 describe-instances --instance-ids i-0ebc6458e8c28709e --region us-west-2 --query 'Reservations[].Instances[].{SpotReq: SpotInstanceRequestId,  Id: InstanceId, Name: Tags[?Key==`Name`].Value|[0]}' --output table
export NAME=user2.example.com
export NAME=user2.k8s.local
kops create cluster $NAME --zones "us-east-2a" --master-zones "us-east-2a" --node-count 1 --node-size m4.xlarge --kubernetes-version v1.11.10  --master-size m4.large --dry-run -o yaml > $NAME.yaml
vim user2.k8s.local.yaml 
ls
vim user1.k8s.local.yaml 
vim user2.k8s.local.yaml 
kops create -f $NAME.yaml
kops create secret --name $NAME sshpublickey admin -i ~/.ssh/id_rsa.pub
kops update cluster $NAME --yes
kops validate cluster
kubectl get nodes
ssf admin@ip-172-20-52-84.us-east-2.compute.internal
ssh admin@ip-172-20-52-84.us-east-2.compute.internal
ssh admin@172-20-52-84
ssh admin@172.20.52.84
ping 172.20.52.84
ssh admin@3.133.79.114
vim user2.k8s.local.yaml 
kops replace -f $NAME.yaml
kops update cluster $NAME --yes
kops rolling-update cluster $NAME --yes
vim user2.k8s.local.yaml 
kops replace -f $NAME.yaml
kops update cluster $NAME --yes
kops rolling-update cluster $NAME --yes
vim user2.k8s.local.yaml 
kops replace -f $NAME.yaml
kops update cluster $NAME --yes
kops rolling-update cluster $NAME --yes
kops rolling-update cluster $NAME --yes --cloudonly
kops validate cluster
vim user1.k8s.local.yaml 
vim user2.k8s.local.yaml 
kops replace -f $NAME.yaml
kops update cluster $NAME --yes
kops rolling-update cluster $NAME --yes
vim user2.k8s.local.yaml 
kops rolling-update cluster $NAME --yes
kops validate cluster
kops rolling-update cluster $NAME --yes --cloudonly
kops validate cluster
ping 172.20.57.134
aws ec2 describe-instances --instance-ids i-0757d6951d515496e  --region us-east-2 --query 'Reservations[].Instances[].{SpotReq: SpotInstanceRequestId,  Id: InstanceId, Name: Tags[?Key==`Name`].Value|[0]}' --output table
ssh admin@3.133.129.69
ssh admin@18.222.51.30
vim user2.k8s.local.yaml 
ssh admin@18.222.51.30
vim user2.k8s.local.yaml 
ssh admin@18.222.51.30
vim user2.k8s.local.yaml 
ssh admin@18.222.51.30
echo $DOMAIN_NAME
echo $NAME
aws iam put-role-policy --role-name nodes.${NAME} --policy-name asg-nodes.${NAME} --policy-document file://policy-cluster-autoscaler.json
vim policy-cluster-autoscaler.json
aws iam put-role-policy --role-name nodes.${NAME} --policy-name asg-nodes.${NAME} --policy-document file://policy-cluster-autoscaler.json
ssh admin@18.222.51.30
kops edit cluster
kubectl edit ig nodes
kops edit ig nodes
kops edit cluster
kops update cluster --yes
helm install --name autoscaler     --namespace kube-system     --set image.tag=v1.1.2     --set autoDiscovery.clusterName=k8s.test.akomljen.com     --set extraArgs.balance-similar-node-groups=false     --set extraArgs.expander=random     --set rbac.create=true     --set rbac.pspEnabled=true     --set awsRegion=eu-west-1     --set nodeSelector."node-role\.kubernetes\.io/master"=""     --set tolerations[0].effect=NoSchedule     --set tolerations[0].key=node-role.kubernetes.io/master     --set cloudProvider=aws     stable/cluster-autoscaler
kops edit ig nodes
kops update cluster $NAME --yes
aws iam put-role-policy --role-name nodes.${DOMAIN_NAME} --policy-name asg-nodes.${DOMAIN_NAME} --policy-document file://policy-cluster-autoscaler.json
kops edit ig nodes
kops edit cluster
kops update cluster $NAME --yes
aws iam put-role-policy --role-name nodes.${DOMAIN_NAME} --policy-name asg-nodes.${DOMAIN_NAME} --policy-document file://policy-cluster-autoscaler.json
kops delete cluster user1.k8s.local --yes
kubectl get pods
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/download/v0.3.6/components.yaml
kubectl get pods
kubectl get deployment metrics-server -n kube-system
kubectl delete pods default-mem-demo-3 
kubectl get deployment metrics-server -n kube-system
kubectl get pods
kubectl -n kube-system describe pods 
kubectl -n kube-system get pods 
kubectl -n kube-system describe pods metrics-server-97f6d894c-j7xt7
kubectl -n kube-system delete deployments metrics-server-97f6d894c-j7xt7
kubectl -n kube-system delete deployments metrics-server
exit
kops delete cluster user2.k8s.local
kops delete cluster
kops delete cluster --name user2.k8s.local
echo $NAME
kops get clusters
export KOPS_STATE_STORE=s3://devops-02-kops-state2
kops get clusters
kops delete clusters
kops delete cluster
kops delete cluster --name user2.k8s.local
kops delete cluster --name user2.k8s.local --yes
export NAME=user1.example.com
kops create cluster $NAME     --zones "us-east-2a,us-east-2b,us-east-2c"     --master-zones "us-east-2a,us-east-2b,us-east-2c"     --networking weave     --topology private     --bastion     --node-count 3     --node-size m4.xlarge     --kubernetes-version v1.6.6     --master-size m4.large     --vpc vpc-6335dd1a     --dry-run \
kops create cluster $NAME     --zones "us-east-2a"     --master-zones "us-east-2a"     --node-count 1     --node-size t3.small     --kubernetes-version v1.6.6     --master-size m4.large     --vpc vpc-9be18ae3     --dry-run -o yaml > $NAME.yaml
kops create cluster $NAME     --zones "us-east-2a"     --master-zones "us-east-2a"     --node-count 1     --node-size t3.small     --kubernetes-version v1.6.6     --master-size m4.large   --dry-run -o yaml > $NAME.yaml
echo $NAME
export NAME=user1.k8s.local
kops create cluster $NAME     --zones "us-east-2a"     --master-zones "us-east-2a"     --node-count 1     --node-size t3.small     --kubernetes-version v1.6.6     --master-size m4.large   --dry-run -o yaml > $NAME.yaml
vim user1.k8s.local.yaml 
kops create -f $NAME.yaml
kops create secret --name $NAME sshpublickey admin -i ~/.ssh/id_rsa.pub
kops update cluster $NAME --yes
vim user1.k8s.local.yaml 
kops create -f $NAME.yaml
kops replace -f $NAME.yaml
kops update cluster $NAME --yes
vim user1.k8s.local.yaml 
kops validate cluster
kubectl get nodes
kops validate cluster
kops rolling-update cluster $NAME --yes
kops rolling-update cluster $NAME --yes --cloudonly
kops delete cluster --name $NAME
kops delete cluster --name $NAME --yes
kops create cluster $NAME     --zones "us-east-2a"     --master-zones "us-east-2a"     --node-count 1     --node-size t3.small     --kubernetes-version v1.11.10     --master-size t3.small   --dry-run -o yaml > $NAME.yaml
vim user1.k8s.local.yaml 
kops create -f $NAME.yaml
kops create secret --name $NAME sshpublickey admin -i ~/.ssh/id_rsa.pub
ops update cluster $NAME --yes
kops update cluster $NAME --yes
aws ec2 describe-instances --instance-ids i-05b9438d9861f3fa3 --region us-east-2  --query 'Reservations[].Instances[].{SpotReq: SpotInstanceRequestId,  Id: InstanceId, Name: Tags[?Key==`Name`].Value|[0]}' --output table
aws ec2 describe-instances --instance-ids i-0c009485976e7f0da --region us-east-2  --query 'Reservations[].Instances[].{SpotReq: SpotInstanceRequestId,  Id: InstanceId, Name: Tags[?Key==`Name`].Value|[0]}' --output table
kubectl get pods
wget https://github.com/kubernetes-sigs/metrics-server/releases/download/v0.3.6/components.yaml
ls
rm -rf user1.example.com.yaml 
vim cluster.yaml 
vim components.yaml 
mkdir metric
cd metric
git clone https://github.com/kubernetes-sigs/metrics-server.git
cd metrics-server/
vim deploy/1.8+/metrics-server-deployment.yaml
ls
cd manifests/
ls
cd base
ls
cd ..
cd release/
ls
cd ..
cd
kubectl apply -f components.yaml 
kubectl -n kube-system get pods
kubectl -n kube-system describe pods metrics-server-97f6d894c-zwjn2 
vim components.yaml 
kubectl get niodes
kubectl get nodes
vim components.yaml 
kubectl -n kube-system delete deployments metric-server
kubectl -n kube-system get deployments
kubectl -n kube-system delete deployments metrics-server
kubectl apply -f components.yaml 
kubectl -n kube-system get deployments
kubectl -n kube-system get pods
didn't match node selector
kubectl get deployments metrics-server -n kube-system
kubectl top nodes
ls
cd metric/
ls
cd metrics-server/
ls
cd deploy
cd test
ls
cd ..
cd cmd
ls
cd metrics-server/
ls
cd ../..
ls
cd vendor/
ls
cd ..
cd pkg/
ls
cd metrics-server/
ls
cd ../..
cd hack
ls
cd ..
cd
kubectl top nodes
kubectl -n kube-syste, get services
kubectl -n kube-system get services
ssh admin@52.15.44.26
vim components.yaml 
kubectl -n kube-system delete deployments metrics-server
vim components.yaml 
kubectl aplly -f components.yaml 
kubectl apply -f components.yaml 
kubectl -n kube-system get deployments
kubectl top node
kops delete cluster --name $NAMe
kops delete cluster --name $NAME
kops delete cluster --name $NAME --yes
kvim user1.k8s.local.yaml 
vim user1.k8s.local.yaml 
kops create -f $NAME.yaml
kops create secret --name $NAME sshpublickey admin -i ~/.ssh/id_rsa.pub
kops update cluster $NAME --yes
kops validate cluster
ls
rm -rf policy-cluster-autoscaler.json 
rm -rf metric/
ls
kubectl apply -f components.yaml 
kubectl -n kube-system get deployments
kubectl top node
kubectl top nodes
git clone https://github.com/kubernetes-incubator/metrics-server.git
kubectl create -f deploy/1.8+
kubectl delete -n kube-system deployments.apps metrics-server
kubectl top nodes
kubectl apply -f components.yaml 
kubectl top nodes
vim components.yaml 
kubectl -n kube-system get services
ssh admin@3.22.248.43
cim components.yaml 
vim components.yaml 
kubectl apply -f components.yaml 
kubectl rollout-restart deployment metrics-server
kubectl rollout restart deployment metrics-server
kubectl -n kube-system rollout restart deployment metrics-server
kubectl get deployments metrics-server -n kube-system
kubectl top nodes
kubectl top pods
kubectl apply -f https://k8s.io/examples/controllers/nginx-deployment.yaml
kubectl top pods
kubectl get pods
kubectl top pods
kops edit cluster --name $NAME
vim components.yaml 
kubectl apply -f components.yaml 
kubectl -n kube-system rollout restart deployment metrics-controller
kubectl -n kube-system rollout restart deployment metrics-server
kubectl top nodes
kubectl top pods
kubectl top nodes
kubectl -n kube-system get pods
kubectl -n kubes-system get logs metrics-server-c85cfd55b-7p22f 
kubectl -n kubes-system logs metrics-server-c85cfd55b-7p22f 
kubectl -n kube-system logs metrics-server-c85cfd55b-7p22f 
kubectl top pod -n default
kubectl get --raw /api/v1/nodes/kube-poc-compute3/proxy/stats/summary | jq '.node'
apt install jq
sudo apt install jq
kubectl get --raw /api/v1/nodes/kube-poc-compute3/proxy/stats/summary | jq '.node'
kubetl get nodes
kubectl get nodes
kubectl get --raw /api/v1/nodes/ip-172-20-48-217.us-east-2.compute.internal/proxy/stats/summary | jq '.node'
kubectl top node
kubectl get --raw /apis/metrics.k8s.io/v1beta1/nodes/kube-poc-compute3
kubectl get --raw /apis/metrics.k8s.io/v1beta1/nodes/ip-172-20-48-217.us-east-2.compute.internal
vim components.yaml 
kubectl get --raw /apis/metrics.k8s.io/v1/nodes/ip-172-
kubectl get --raw /apis/metrics.k8s.io/v1beta1/nodes/
kops delete cluster --name $NAME --yes
rm -rf components.yaml 
kops create -f $NAME.yaml
kops create secret --name $NAME sshpublickey admin -i ~/.ssh/id_rsa.pub
kops update cluster $NAME --yes
kops validate cluster
ls
rm -rf metrics-server/
git clone https://github.com/kubernetes-sigs/metrics-server.git
cd metrics-server/
ls
cd ..
rm -rf metrics-server/
git clone https://github.com/kubernetes-sigs/metrics-server.git
cd metrics-server/
git checkout f90c670
git log
ls
cd deploy/
ls
vim metrics-server-deployment.yaml 
kubectl get pods -a
kubectl get pods -n kube-system
kubectl get namespaces
kubectl get pods -n kube-public
vim metrics-server-deployment.yaml 
cd ..
git checkout 01973a5
ls
cd deploy/
ls
cd 1.8+
ls
vim metrics-server-deployment.yaml 
cd
cd metrics-server/
vim deploy/1.8+/metrics-server-deployment.yaml 
kubectl apply -f deploy/1.8+/
kubectl top pod
kubectl top nodes
kubectl edit deploy -n kube-system metrics-server
kubectl rollout restart deployment metrics-server
kubectl -n kube-system rollout restart deployment metrics-server
kubectl top pod
kubectl top pods
kubectl top node
kubectl top nodes
kubectl -n kube-system get logs
kubectl -n kube-system get pods
kubectl -n kube-system get logs metrics-server-64b497bc7d-wfcht 
kubectl -n kube-system logs metrics-server-64b497bc7d-wfcht 
kubectl edit deploy -n kube-system metrics-server
kubectl -n kube-system rollout restart deployment metrics-server
kubectl top nodes
kubectl -n kube-system logs metrics-server-64b497bc7d-wfcht 
kubectl -n kube-system get nodes
kubectl -n kube-system get pods
kubectl -n kube-system logs metrics-server-7d796d489f-9qr7h
kubectl -n kube-system logs metrics-server-64b497bc7d-wfcht 
kubectl edit deploy -n kube-system metrics-server
kubectl -n kube-system rollout restart deployment metrics-server
kubectl -n kube-system get pods | grep metrics
kubectl -n kube-system logs metrics-server-74f899b8f-rp5cs
kubectl top nodes
kubectl -n kube-system logs metrics-server-74f899b8f-rp5cs
kubectl edit deploy -n kube-system metrics-server
kubectl -n kube-system rollout restart deployment 
kubectl get nodes
kubectl top nodes
kubectl -n kube-system get pods | metrics
kubectl -n kube-system get pods | grep metrics
kubectl -n kube-system logs metrics-server-5c58cbcd79-pjgvn 
kubectl describe clusterrole system:metrics-server
kubectl --v=10 top nodes
ssh admin@18.220.96.55
kops edit cluster
kops update cluster $NAME --yes
kops rolling-update cluster $NAME --yes
kops validate cluster
kubectl apply -f deploy/1.8+/
kubectl top nodes
kubectl top pods
kubectl top services
kubectl top service
kubectl -n kube-system get nodes
kubectl -n kube-system get pods | grep metrics
kubectl -n kube-system logs metrics-server-54cf68758d-t79ch
kops rolling-update
kops edit cluster
kubectl -n kube-system delete deployment metrics-server
cd
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod 700 get_helm.sh
/get_helm.sh
./get_helm.sh
helm install stable/metrics-server --name metrics-server --version 2.8.2 --namespace kube-system --set args={"--kubelet-insecure-tls=true"}
helm install stable/metrics-server metrics-server --version 2.8.2 --namespace kube-system --set args={"--kubelet-insecure-tls=true"}
ssh admin@18.220.96.55
ssh admin@3.128.79.75
kops edit cluster
kops $NAME et cluster spec.kubelet.authenticationTokenWebhook=true
kops $NAME set cluster spec.kubelet.authenticationTokenWebhook=true
kops delete cluster --name $NAME
kops delete cluster --name $NAME --yes
rm -rf cluster.yaml 
cd metrics-server/
vim deploy/1.8+/metrics-server-deployment.yaml
cd
kops create -f $NAME.yaml
kops create secret --name $NAME sshpublickey admin -i ~/.ssh/id_rsa.pub
kops set cluster spec.kubelet.authenticationTokenWebhook=true
kops update cluster $NAME --yes
kops set cluster spec.kubelet.authenticationTokenWebhook=true
export KOPS_FEATURE_FLAGS=SpecOverrideFlag
kops set cluster spec.kubelet.authenticationTokenWebhook=true
kops set cluster spec.kubelet.authorizationMode=Webhook
kops update cluster --yes
kops rolling-update cluster $NAME --yes
kops edit cluster
cd metrics-server/
kubectl get clusterrolebinding
kubectl get clusterrolebinding | grep system:kubelet-api-admin
vim deploy/1.8+/metrics-server-deployment.yaml 
kubectl apply -f  deploy/1.8+/
kubectl get pods -n kube-system | grep metrics
kubectl top nodes
kubectl describe clusterrole system:metrics-server
cd deploy/1.8+/
ls
cd
kubectl -n kube-system logs metrics-server-68df9fbc9f-jbbvj
kubectl --v=10 top nodes
kubectl top nodes
kubectl get nodes
CLOUD_PROVIDER=aws
IMAGE=k8s.gcr.io/cluster-autoscaler:v1.2.2
MIN_NODES=1
MAX_NODES=3
AWS_REGION=us-east-2
GROUP_NAME="nodes.user1.k8s.local"
SSL_CERT_PATH="/etc/ssl/certs/ca-certificates.crt"
addon=cluster-autoscaler.yml
IMAGE=k8s.gcr.io/cluster-autoscaler:v1.3.2
wget -O ${addon} https://raw.githubusercontent.com/kubernetes/kops/master/addons/cluster-autoscaler/v1.8.0.yaml
sed -i -e "s@{{CLOUD_PROVIDER}}@${CLOUD_PROVIDER}@g" "${addon}"
ed -i -e "s@{{IMAGE}}@${IMAGE}@g" "${addon}"
sed -i -e "s@{{MIN_NODES}}@${MIN_NODES}@g" "${addon}"
sed -i -e "s@{{MAX_NODES}}@${MAX_NODES}@g" "${addon}"
sed -i -e "s@{{GROUP_NAME}}@${GROUP_NAME}@g" "${addon}"
sed -i -e "s@{{AWS_REGION}}@${AWS_REGION}@g" "${addon}"
sed -i -e "s@{{SSL_CERT_PATH}}@${SSL_CERT_PATH}@g" "${addon}"
sed -i -e "s@{{IMAGE}}@${IMAGE}@g" "${addon}"
kubectl apply -f ${addon}
kubectl get pods
kubectl -n kube-system get pods
kubectl top nodes
ssh admin@3.135.205.217
vim nginx.yaml
kubectl apply -f nginx.yaml 
kubectl get pods
cp nginx.yaml nginx2.yaml
vim nginx2.yaml 
kubectl apply -f nginx2.yaml 
kubectl get pods
kubectl get nodes
kubectl top nodes
kubectl logs nginx2
kubectl describe nginx2
kubectl describe pod nginx2
kubectl get pods
kubectl delete pod nginx2
kubectl get pods
kubectl top nodes
kubectl get pods --all-namespaces -o wide --field-selector spec.nodeName=ip-172-20-42-63.us-east-2.compute.internal
kubectl get pods
kubectl get pods --all-namespaces -o wide --field-selector spec.nodeName=ip-172-20-41-169.us-east-2.compute.internal
kubectl top nodes
kubectl top pods
kubectl top nodes
kubectl top pods
kubectl top nodes
top
vim cluster-autoscaler.yml 
ls
kops get cluster --name  user1.k8s.local --output backup.yaml
KOPS_STATE_STORE="s3://devops-02-kops-state2"
kops get cluster --name  user1.k8s.local --output backup.yaml
export KOPS_STATE_STORE="s3://devops-02-kops-state2"
kops get cluster --name  user1.k8s.local --output backup.yaml
mkdir ok
cd ok
kops get cluster --name  user1.k8s.local --output yaml
kops get ig --name  user1.k8s.local --output yaml
cd
history | grep describe
history | grep aws
aws ec2 describe-instances --instance-ids i-0c957a125fd923612 --region us-east-2  --query 'Reservations[].Instances[].{SpotReq: SpotInstanceRequestId,  Id: InstanceId, Name: Tags[?Key==`Name`].Value|[0]}' --output table
exit
ping 172.31.27.97
exit
kops edit cluster
export KOPS_STATE_STORE=s3://devops-02-kops-state2
kops edit cluster
export KOPS_STATE_STORE=s3://devops-02-kops-state2
kops edit cluster
ls
rm -rf get_helm.sh 
kops edit cluster
cd ~/.kube/config
vim ~/.kube/config
cd ~/.kube
ls
cd ..
kops edit cluster
rm -rf user2.k8s.local.yaml 
vim test.yaml
kops edit cluster
vim test.yaml
kops edit cluster
vim test.yaml
kops edit cluster
vim test.yaml
cd -
ls
vim config 
cd
ssh admin@3.135.205.217
ls
vim user1.k8s.local.yaml 
mkdir myconfigs
cd myconfigs/
wget https://devops-02-kops-state2.s3-us-west-2.amazonaws.com/user1.k8s.local/config
vim config 
cd
vim config 
cd myconfigs/
vim config 
cd
cd myconfigs/
mv config user2.k8s.local.yaml
vim user2.k8s.local.yaml 
kubectl create -f user2.k8s.local.yaml 
rm -rf user2.k8s.local.yaml 
cd ..
rm -rf myconfigs/
export NAME=user2.k8s.local
export KOPS_STATE_STORE=s3://ex
kops create cluster $NAME --zones "us-east-2a"  --master-zones "us-east-2a" --node-count 1  --node-size t3.small --kubernetes-version v1.11.10 --master-size t3.small  --dry-run -o yaml > $NAME.yaml
export KOPS_STATE_STORE=s3://devops-02-kops-state2
kops create cluster $NAME --zones "us-east-2a"  --master-zones "us-east-2a" --node-count 1  --node-size t3.small --kubernetes-version v1.11.10 --master-size t3.small  --dry-run -o yaml > $NAME.yaml
kops edit cluster
ls
exit
export KOPS_STATE_STORE=s3://devops-02-kops-state2
kops edit cluster
kops edit cluster
export KOPS_STATE_STORE=s3://devops-02-kops-state2
kops edit cluster
export KOPS_STATE_STORE=s3://devops-02-kops-state2
kops edit cluster
exit
export KOPS_STATE_STORE=s3://devops-02-kops-state2
kops edit cluster
aws ec2 describe-images --region us-east-1 --output table   --owners 383156758163   --query "sort_by(Images, &CreationDate)[*].[CreationDate,Name,ImageId]"   --filters "Name=name,Values=*-debian-stretch-*"
kops edit ig
kops edit ig nodes
kops set ig node spec.maxSize=3
kops set
kops edit cluster
kops set ig
kops get ig nodes
kops describe nodes
kops describe node
kops edit ig --name nodes
kops edit ig nodes --maxSize 3
kops edit nodes --maxSize=3
ls
ls -a
cd .kube
ls
cd ..
cd kops/
ls
cd ..
ls
kops edit ig nodes --help
kops edit ig nodes
aws ec2 describe-images --owners self amazon
aws ec2 describe-images --owners self amazon --region us-east-2
aws ec2 describe-images --help
aws ec2 describe-images help
aws ec2 describe-images --help
aws ec2 describe-images help
aws ec2 describe-images --filters image-id ami-046cfe1f8332fd5f2
aws ec2 describe-images --filters "image-id=ami-046cfe1f8332fd5f2"
aws ec2 describe-images --filters "image-id=ami-046cfe1f8332fd5f2" --region us-east-2
aws ec2 describe-images --region us-east-2 --image-ids ami-046cfe1f8332fd5f2
vim user1.k8s.local.yaml 
vim user2.k8s.local.yaml 
echo $NAME
export NAME=user2.k8s.local
kops create -f $NAME.yaml
kops create secret --name $NAME sshpublickey admin -i ~/.ssh/id_rsa.pub
kops update cluster $NAME --yes
kops validate cluster
ssh admin@3.15.228.188
kops validate cluster
kops delete cluster --name $NAME --yes
echo $KOPS_STATE_STORE
kops create cluster $NAME     --zones "us-east-2a,us-east-2b,us-east-2c"     --master-zones "us-east-2a,us-east-2b,us-east-2c"     --networking weave     --topology private     --bastion     --node-count 3     --node-size m4.xlarge     --kubernetes-version v1.6.6     --master-size m4.large     --vpc vpc-6335dd1a     --dry-run \
kops create cluster $NAME     --zones "us-east-2a"     --master-zones "us-east-2a"     --node-count 1     --node-size t3.small     --kubernetes-version v1.11.10     --master-size t3.small    --dry-run -o yaml > $NAME.yaml
vim user2.k8s.local.yaml 
kops create -f $NAME.yaml
echo $NAME
kops create secret --name $NAME sshpublickey admin -i ~/.ssh/id_rsa.pub
kops update cluster $NAME --yes
kops rolling-update cluster $NAME --yes
kops validate cluster
ssh admin@35.155.85.3
ssh admin@52.14.122.199
ssh admin@3.135.205.217
ssh admin@52.14.122.199
ssh admin@3.135.205.217
ssh admin@3.14.144.213
cd ssh
cd .ssh/
ls
vim id_rsa.pub 
vim id_rsa
cd
kops create secret sshpublickey admin -i .ssh/id_rsa.pub --name $NAME --state KOPS_STATE_STORE
ls
kops edit cluster
kops create secret sshpublickey admin -i .ssh/id_rsa.pub--state KOPS_STATE_STORE
kops create secret sshpublickey admin -i .ssh/id_rsa.pub --state KOPS_STATE_STORE
kops rolling-update cluster $NAME --yes
kops create secret sshpublickey admin -i .ssh/id_rsa.pub --state KOPS_STATE_STORE
kops update cluster $NAME --yes
kops rolling-update cluster $NAME --yes
kops create secret sshpublickey admin -i .ssh/id_rsa.pub --state KOPS_STATE_STORE
kops create secret sshpublickey admin -i .ssh/id_rsa.pub --name user1.k8s.local --state KOPS_STATE_STORE
kops delete cluster --name $NAME --yes
kops create cluster $NAME     --zones "us-east-2a"     --master-zones "us-east-2a"     --node-count 1     --node-size t3.small     --kubernetes-version v1.11.10     --master-size t3.small    --dry-run -o yaml > $NAME.yaml
vim user2.k8s.local.yaml 
kops create -f $NAME.yaml
kops create secret --name $NAME sshpublickey admin -i ~/.ssh/id_rsa.pub
cd ~/.ssh/
ls
vim id_rsa.pub 
kops create secret --name $NAME sshpublickey admin -i ~/.ssh/id_rsa.pub
echo $NAME
kops update cluster $NAME --yes
kops validate cluster
ssh admin@3.15.189.28
kops delete cluster
kops delete cluster --name $NAME
ssh admin@3.15.189.28
kops validate cluster
ssh root@3.15.189.28
ssh ubuntu@3.15.189.28
ssh ubuntu@18.221.57.1
cd
kops validate cluster
kops export kubeconfig $NAME
kops help
echo $KOPS_CLUSTER_NAME
kops validate cluster --name user1.k8s.local
kops validate cluster
ls
cd metrics-server/
cd ..
kubectl edit cluster --name user1.k8s.local
kops edit cluster --name user1.k8s.local
kops edit cluster --name user2.k8s.local
kops update cluster $NAME --yes
kops rolling-update cluster $NAME --yes
ls
cd metrics-server/
ls
cd
ssh admin@3.135.205.217
ssh admin@18.223.239.69
ls
cd metrics-server/
ls
cd
cd .kube/
ls
ls -a
cd cache/
ls
cd ..
cd http-cache/
ls
cd ..
cd
cd metrics-server/
kops get clusters
kops export kubecfg user1.k8s.local
kops export kubecfg user2.k8s.local
ls
kubectl apply -f deploy/1.8+/
kubectl top pods
kubectl top nodes
cd
CLOUD_PROVIDER=aws
IMAGE=k8s.gcr.io/cluster-autoscaler:v1.3.1
MIN_NODES=1
MAX_NODES=3
kops edit ig nodes
AWS_REGION=us-east-2
GROUP_NAME=$NAME
echo $GROUP_NAME
SSL_CERT_PATH="/etc/ssl/certs/ca-certificates.crt"
addon=cluster-autoscaler.yml
sed -i -e "s@{{CLOUD_PROVIDER}}@${CLOUD_PROVIDER}@g" "${addon}"
sed -i -e "s@{{IMAGE}}@${IMAGE}@g" "${addon}"
sed -i -e "s@{{MIN_NODES}}@${MIN_NODES}@g" "${addon}"
sed -i -e "s@{{MAX_NODES}}@${MAX_NODES}@g" "${addon}"
sed -i -e "s@{{GROUP_NAME}}@${GROUP_NAME}@g" "${addon}"
sed -i -e "s@{{AWS_REGION}}@${AWS_REGION}@g" "${addon}"
sed -i -e "s@{{SSL_CERT_PATH}}@${SSL_CERT_PATH}@g" "${addon}"
kubectl apply -f ${addon}
vim nginx
vim nginx.yaml 
kubectl get nodes
ls
kubectl apply -f nginx.yaml 
kubectl get pods
kubectl apply -f nginx2.yaml 
kubectl get pods
kubectl describe nginx2
kubectl describe pod nginx2
kubectl get pods
kubectl describe pod nginx2
kubectl get nodes
kubectl describe pod nginx2
kubectl get pods
kubectl describe pod nginx2
kops edit ig nodes
kubectl describe pod nginx2
kubectl get nodes
echo $MAX_NODES
echo $MIN_NODES
kubectl describe pod nginx2
kubectl -n kube-system get pods 
kubectl delete pod ngnix2
kubectl get pods
kubectl delete pod nginx2
kubectl -n kube-system get pods 
kubectl -n kube-system describe pod cluster-autoscaler-7884fb6fb5-2lt94
kubectl -n kube-system get pods 
kubectl apply -f nginx2.yaml 
kubectl describe pod nginx2
ls
echo $AWS_REGION
addon=cluster-autoscaler.yml
IMAGE=k8s.gcr.io/cluster-autoscaler:v1.3.2
wget -O ${addon} https://raw.githubusercontent.com/kubernetes/kops/master/addons/cluster-autoscaler/v1.8.0.yaml
sed -i -e "s@{{CLOUD_PROVIDER}}@${CLOUD_PROVIDER}@g" "${addon}"
sed -i -e "s@{{IMAGE}}@${IMAGE}@g" "${addon}"
sed -i -e "s@{{MIN_NODES}}@${MIN_NODES}@g" "${addon}"
sed -i -e "s@{{MAX_NODES}}@${MAX_NODES}@g" "${addon}"
sed -i -e "s@{{GROUP_NAME}}@${GROUP_NAME}@g" "${addon}"
sed -i -e "s@{{AWS_REGION}}@${AWS_REGION}@g" "${addon}"
sed -i -e "s@{{SSL_CERT_PATH}}@${SSL_CERT_PATH}@g" "${addon}"
echo $CLOUD_PROVIDER
echo $IMAGE
echo $MIN_NODES
echo $MAX_NODES
echo $GROUP_NAME
echo $AWS_REGION
echo $SSL_CERT_APTH
echo $SSL_CERT_PAPTH
echo $SSL_CERT_PATH
kubectl apply -f ${addon}
kubectl -n kube-system get pods | grep scaler
kubectl top nodes
kubectl -n kube-system get pods
kubectl top pods
cd metrics-server/
kubectl apply -f deploy/1.8+/
kubectl top pods
kubectl top noes
kubectl top nodes
kubectl -n kube-system get pods | grep scaler
kubectl top nodes
kubectl -n kube-system get pods | grep scaler
cd
kubectl apply -f nginx.yaml 
kubectl -n kube-system get pods | grep scaler
kubectl top nodes
kubectl top pods
kubectl -n kube-system get pods | grep scaler
kubectl apply -f nginx2.yaml 
kubectl -n kube-system get pods | grep scaler
kubectl get pods
kubectl -n kube-system get pods | grep scaler
kubectl describe pod nginx2
kubectl -n kube-system get pods | grep scaler
kubectl get pods
kubectl -n kube-system get pods | grep scaler
kubectl describe pod nginx2
kubectl -n kube-system get pods | grep scaler
kubectl describe pod nginx2
kubectl -n kube-system get pods | grep scaler
kops edit ig nodes
kubectl get nodes
kubectl -n kube-system describe pod cluster-autoscaler-5967fcb67-2x6qx
kubectl describe pod nginx2
kubectl -n kube-system describe pod cluster-autoscaler-5967fcb67-2x6qx
kubectl -n kube-system logs cluster-autoscaler-5967fcb67-2x6qx
echo $GROUP_NAME
GROUP_NAME=nodes.user2.k8s.local
sed -i -e "s@{{GROUP_NAME}}@${GROUP_NAME}@g" "${addon}"
kubectl apply -f ${addon}
kubectl -n kube-system logs cluster-autoscaler-5967fcb67-2x6qx
kubeclt -n kube-system get deployments
kubectl -n kube-system get deployments
kubectl -n kube-system delete deployments cluster-autoscaler
kubectl apply -f ${addon}
kubectl get pods
kubectl -n kube-system get pods
kubectl -n kube-system logs cluster-autoscaler-5967fcb67-rmm2g
echo $GROUP_NAME
kubectl get nodes
kubectl -n kube-system logs cluster-autoscaler-5967fcb67-rmm2g
kops delete cluster --name $NAME --yes
history | grep create
echo $NAME
history | grep store
history | grep s3
KOPS_STATE_STORE=s3://devops-o2-kops-state2
NAME=user2.k8s.local
kops create cluster $NAME --zones "us-east-2a"  --master-zones "us-east-2a" --node-count 1  --node-size t3.small --kubernetes-version v1.11.10 --master-size t3.small  --dry-run -o yaml > $NAME.yaml
export KOPS_STATE_STORE=s3://devops-o2-kops-state2
kops create cluster $NAME --zones "us-east-2a"  --master-zones "us-east-2a" --node-count 1  --node-size t3.small --kubernetes-version v1.11.10 --master-size t3.small  --dry-run -o yaml > $NAME.yaml
export KOPS_STATE_STORE=s3://devops-02-kops-state2
kops get clusters
kops create cluster $NAME --zones "us-east-2a"  --master-zones "us-east-2a" --node-count 1  --node-size t3.small --kubernetes-version v1.11.10 --master-size t3.small  --dry-run -o yaml > $NAME.yaml
vim user2.k8s.local.yaml 
kops create -f $NAME.yaml
kops create secret --name $NAME sshpublickey admin -i ~/.ssh/id_rsa.pub
kops update cluster $NAME --yes
kops validate cluster
cd metrics-server/
kubectl apply -f deploy/1.8+/
kubectl top pods
kubectl top nodes
cd
CLOUD_PROVIDER=aws
IMAGE=k8s.gcr.io/cluster-autoscaler:v1.3.1
IMAGE=k8s.gcr.io/cluster-autoscaler:v1.3.2
MIN_NODES=1
MAX_NODES=5
MAX_NODES=3
kops edit ig nodes
AWS_REGION=us-east-2
GROUP_NAME="nodes.user2.k8s.local"
SSL_CERT_PATH="/etc/ssl/certs/ca-certificates.crt"
addon=cluster-autoscaler.yml
wget -O ${addon} https://raw.githubusercontent.com/kubernetes/kops/master/addons/cluster-autoscaler/v1.8.0.yaml
sed -i -e "s@{{CLOUD_PROVIDER}}@${CLOUD_PROVIDER}@g" "${addon}"
sed -i -e "s@{{IMAGE}}@${IMAGE}@g" "${addon}"
sed -i -e "s@{{MIN_NODES}}@${MIN_NODES}@g" "${addon}"
sed -i -e "s@{{MAX_NODES}}@${MAX_NODES}@g" "${addon}"
sed -i -e "s@{{GROUP_NAME}}@${GROUP_NAME}@g" "${addon}"
sed -i -e "s@{{AWS_REGION}}@${AWS_REGION}@g" "${addon}"
sed -i -e "s@{{SSL_CERT_PATH}}@${SSL_CERT_PATH}@g" "${addon}"
kubectl apply -f ${addon}
kubectl -n kube-system get pods | grep scale
kubectl apply -f nginx.yaml 
kubectl -n kube-system get pods | grep scale
kubectl apply -f nginx2.yaml 
kubectl get pods
kubectl -n kube-system logs cluster-autoscaler-686fd5bc5d-pvzhc
kubectl get pods
kubectl logs nginx2
kubectl desribe pod nginx2
kubectl describe pod nginx2
kubectl get nodes
kubectl get pods
kubectl delete pods nginx2
kubectl top nodes
kubectl get pods
kubectl -n kube-system logs cluster-autoscaler-686fd5bc5d-pvzhc
kubectl top nodes
kubectl -n kube-system logs cluster-autoscaler-686fd5bc5d-pvzhc
kunbectl get nodes
kubectl get nodes
kubectl -n kube-system logs cluster-autoscaler-686fd5bc5d-pvzhc
kubectl get nodes
kubectl -n kube-system logs cluster-autoscaler-686fd5bc5d-pvzhc
tail -n10 kubectl -n kube-system logs cluster-autoscaler-686fd5bc5d-pvzhc
tail -n 10 kubectl -n kube-system logs cluster-autoscaler-686fd5bc5d-pvzhc
tail -f kubectl -n kube-system logs cluster-autoscaler-686fd5bc5d-pvzhc
kubectl -n kube-system logs cluster-autoscaler-686fd5bc5d-pvzhc
kubectl get nodes
kubectl delete pod nginx
kubectl -n kube-system logs cluster-autoscaler-686fd5bc5d-pvzhc
kubectl get nodes
kops delete cluster --name $NAME --yes
vim user2.k8s.local.yaml 
ls
rm -rf user2.k8s.local.yaml 
echo KOPS_STATE_STORE
echo $KOPS_STATE_STORE
exit
