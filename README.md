# Introduction

This repository will helps automate creation of new k8 clusters and install the dependencies to make it auto scalable on demand. This is tested on AWS environment.
By default the clusters will have Spot instances which can be used to test the environment.<br>
Remove *maxPrice* in the generated yaml to create on-Demand instances.<br>
To get the latest release of [metric-server](https://github.com/kubernetes-sigs/metrics-server) and [cluster-autoscaler](https://github.com/kubernetes/autoscaler/tree/master/cluster-autoscaler) visit their github page.


### Requirments

* kops
* Pre generated ssh keys ~/.ssh/id_rsa.pub and ~/.ssh/id_rsa 
* jq
* Python2.7/3.7
* Sufficient [ IAM ](https://aws.amazon.com/blogs/opensource/deploying-aws-iam-authenticator-kubernetes-kops/) permissions on the ec2 instance on which the script will be run


### Deployment

Edit the *query.json* file to modify the cluster parameters.
The name parameter will be used to name the cluster.
Make sure your ec2 instance has sufficient IAM permissions.<br>
If you haven't already then generate ssh keys to access the instances that will be created for the clusters you will set up  with `ssh-keygen`.<br>


```bash
git clone https://github.com/thelogical/kops-autoscaling.git
cd kops-autoscaling
chmod +x clusters.sh
./clusters.sh
```

You can change the version of k8 and autoscaler in the script itself.
you can also try different versions of metric-server but it it not tested.
