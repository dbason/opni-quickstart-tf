terraform {
  required_providers {
    rke = {
      source  = "rancher/rke"
      version = "1.2.2"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "3.43.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.1.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "3.1.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "1.3.2"
    }
  }
  required_version = ">= 0.13"
}