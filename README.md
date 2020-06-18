# Introduction

This repository will helps automate creation of new k8 clusters and install the dependencies to make it auto scalable on demand. This is tested on AWS environment.
By default the clusters will have Spot instances which can be used to test the environment.
Remove *maxPrice* in the generated yaml to create on-Demand instances.


### Requirments

* kops
* jq
* Python2.7/3.7
* Sufficient [IAM] (https://aws.amazon.com/blogs/opensource/deploying-aws-iam-authenticator-kubernetes-kops/) permissions on the ec2 instance on which the script will be run


### Deployment

Edit the *query.json* file to modify the cluster parameters.
The name parameter will be used to name the cluster.
Make sure your ec2 instance has sufficient IAM permissions.

```bash
git clone https://github.com/thelogical/kops-autoscaling.git
chmod +x clusters.sh
./clusters.sh
```

You can change the version of k8 and autoscaler in the script itself.
you can also try different versions of metric-server but it it not tested.
