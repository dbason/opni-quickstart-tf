provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.aws_region
}

provider "tls" {
}

# Local provider
provider "local" {
}

# RKE provider
provider "rke" {
}

provider "helm" {
  kubernetes {
    host = rke_cluster.opni_cluster.api_server_url

    client_certificate     = rke_cluster.opni_cluster.client_cert
    client_key             = rke_cluster.opni_cluster.client_key
    cluster_ca_certificate = rke_cluster.opni_cluster.ca_crt

    load_config_file = false
  }
}