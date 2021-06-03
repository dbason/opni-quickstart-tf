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