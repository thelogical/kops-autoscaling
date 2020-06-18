kubectl apply -f https://github.com/kubernetes/kops/blob/master/addons/kubernetes-dashboard/v1.8.3.yaml

kubectl apply -f cluster-role.yaml

echo && echo "===> Password:"
. 00-env.sh && kops get secrets kube \
    --type secret \
    --output plaintext \
    --state $KOPS_STATE_STORE

echo && echo "===> Token:"
kubectl -n kube-system get secret | \
    grep kubernetes-dashboard-token | \
    awk '{print "kubectl -n kube-system describe secret "$1}' | \
    sh | \
    grep 'token:' | \
    awk '{print "\n"$2}'
