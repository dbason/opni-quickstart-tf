# Required
variable "aws_access_key" {
  type        = string
  description = "AWS access key used to create infrastructure"
}

# Required
variable "aws_secret_key" {
  type        = string
  description = "AWS secret key used to create AWS infrastructure"
}

variable "aws_region" {
  type        = string
  description = "AWS region used for all resources"
  default     = "us-east-1"
}

variable "prefix" {
  type        = string
  description = "Prefix added to names of all resources"
  default     = "quickstart"
}

variable "instance_type" {
  type        = string
  description = "Instance type used for all EC2 instances"
  default     = "t3.xlarge"
}

variable "docker_version" {
  type        = string
  description = "Docker version to install on nodes"
  default     = "19.03"
}

variable "rke_kubernetes_version" {
  type        = string
  description = "Kubernetes version to use for Opni RKE cluster"
  default     = "v1.20.6-rancher1-1"
}

# Local variables used to reduce repetition
locals {
  node_username = "ubuntu"
}