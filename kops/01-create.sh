. 00-env.sh && kops create cluster \
    --name $KOPS_CLUSTER_NAME \
    --zones $KOPS_CLUSTER_ZONES \
    --master-size $KOPS_MASTER_SIZE \
    --master-count $KOPS_MASTER_COUNT \
    --node-size $KOPS_NODE_SIZE \
    --node-count $KOPS_NODE_COUNT \
    --yes
