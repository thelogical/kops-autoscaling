import json
import yaml
import argparse
import os
from collections import OrderedDict

parser = argparse.ArgumentParser()
parser.add_argument('-j',"--json_file",metavar='',help='JSON file path containing required fields\n type -j help to see sample file')
parser.add_argument('-y','--yaml_file',metavar='',help='path to YAML template')

args = parser.parse_args()

if(args.json_file=='help'):
    print("""{
    "name": "user2",
    "minSize": 1,
    "maxSize": 3,
    "machineType": "t2.small",
    "ami-id": "ami-0a63f96e85105c6d3"
    }""")
    quit()


f = open(args.yaml_file,'r')
generator_obj = yaml.load_all(f,Loader=yaml.SafeLoader) #load_all reads multiple yaml configuration in single file
cfg = list(generator_obj)  
os.remove(args.yaml_file)

user = json.load(open(args.json_file))

#setting main cluster configuration

cfg[0]['metadata']['name']="{}.k8s.local".format(user['name'])
cfg[0]['spec']['kubelet']['authenticationTokenWebhook']=True
cfg[0]['spec']['kubelet']['authorizationMode']="Webhook"
cfg[0]['spec']['masterPublicName']="api.{}.k8s.local".format(user['name'])

#setting master group configuration

cfg[1]['metadata']['kops.k8s.io/cluster']="{}.k8s.local".format(user['name'])
cfg[1]['spec']['image']=user['ami-id']
cfg[1]['spec']['machineType']=user['machineType']
#cfg[1]['spec']['maxSize']=user['maxSize']
#cfg[1]['spec']['minSize']=user['minSize']

spec = cfg[1]['spec']
keys = list(spec.keys())
vals = list(spec.values())
keys.insert(4,"maxPrice")                #this enables us to launch spot instances
vals.insert(4,"0.35")
cfg[1]['spec'] = dict(zip(keys,vals))

#setting node group configuration

cfg[2]['metadata']['kops.k8s.io/cluster']="{}.k8s.local".format(user['name'])
cfg[2]['spec']['image']=user['ami-id']
cfg[2]['spec']['machineType']=user['machineType']
cfg[2]['spec']['maxSize']=user['maxSize']
cfg[2]['spec']['minSize']=user['minSize']

spec = cfg[2]['spec']
keys = list(spec.keys())
vals = list(spec.values())
keys.insert(4,"maxPrice")
vals.insert(4,"0.35")
cfg[2]['spec'] = dict((zip(keys,vals)))


f = open(args.yaml_file,'w')
yaml.dump_all(cfg,f,default_flow_style=False)







