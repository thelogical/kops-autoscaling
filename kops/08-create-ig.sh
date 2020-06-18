. 00-env.sh && kops create ig large_nodes \
    --name $KOPS_CLUSTER_NAME \
    --state $KOPS_STATE_STORE \
    --role node
