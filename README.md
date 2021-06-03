# opni-quickstart-tf

## AWS Quickstart

The Opni Terraform quickstart creates a single node RKE cluster on AWS for installing the Opni Quickstart into

**You will be responsible for any and all infrastructure costs incurred by these resources.**

### Requirements - Cloud

- Terraform >=0.13.0
- IAM Credentials for AWS

### EC2 Instance requirements
- Ubuntu 20.04
- 4 CPUs
- 16GB of RAM
- 32GB of disk space

The default settings will provision a t3.xlarge instance to meet these requirements

### Deploy

To begin with the quickstart, perform the following steps

1. Clone or download this repository to a local folder
1. Copy or rename `terraform.tfvars.example` to `terraform.tfvars` and fill in all required variables
1. Run `terraform init`
1. Run `terraform apply`

When provisioning has finished it will output the public IP of the node created.
A kubecfg file to connect to the cluster will also be created: `kube_config_cluster.yaml`