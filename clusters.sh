Help()
{
   # Display Help
   echo "This script will create a new auto scaling k8 cluster"
   echo "It expects a JSON file"
   echo
   echo "Usage: ./clusters.sh /path/to/json /path/to/yaml"
   echo "The Script assumes python is installed at /usr/bin/python( No extra Packages needed )"
   echo "If not then make sure python binary is in the PATH env variable"
   echo "Also be patient as setting up a new k8 cluster takes time"
   echo
   exit
}

while getopts ":h" option; do
   case $option in
      h) # display Help
         Help
   esac
done

if [ -z $1 ]
then
      Help
fi

val=$(jq -r '.name' query.json )
export NAME="$val.k8s.local"

export KOPS_STATE_STORE=s3://devops-02-kops-state2

kops create cluster $NAME \
    --zones "us-east-2a" \
    --master-zones "us-east-2a" \
    --node-count 1 \
    --node-size t3.small \
    --kubernetes-version v1.11.10 \
    --master-size t3.small \
    --dry-run \
    -o yaml > $NAME.yaml

python3.7 test.py -j $1 -y $NAME.yaml

kops create -f $NAME.yaml
kops create secret --name $NAME sshpublickey admin -i ~/.ssh/id_rsa.pub
kops update cluster $NAME --yes

kops validate cluster &> /dev/null
RESULT=$?
echo "Waiting for the cluster setup to complete"
echo "This will take a while"
while [ $RESULT -ne 0 ]
do
	kops validate cluster &> /dev/null
	RESULT=$?
done
echo "cluster is now ready to use"

kubectl apply -f metrics-server/deploy/1.8+/
echo "Waiting for cluster metrics for 1 min"
sleep 1m
kubectl top nodes
RESULT=$?
while [ $RESULT -ne 0 ]
do
        kubectl top nodes &> /dev/null
	RESULT=$?
done

CLOUD_PROVIDER=aws
IMAGE=k8s.gcr.io/cluster-autoscaler:v1.3.2
MIN_NODES=$(jq -r '.minSize' query.json)
MAX_NODES=$(jq -r '.maxSize' query.json)
AWS_REGION=us-east-2
GROUP_NAME="nodes.$val.k8s.local"
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

echo
echo "The cluster is now set up to scale on demand"
echo "Trying adding pods and the cluster and test the auto scaling group"



