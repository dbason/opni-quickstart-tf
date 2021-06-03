# Provision RKE cluster on provided infrastructure
resource "rke_cluster" "opni_cluster" {
  cluster_name = "quickstart-rke-server"

  nodes {
    address          = aws_instance.rke_server.public_ip
    internal_address = aws_instance.rke_server.private_ip
    user             = local.node_username
    role             = ["controlplane", "etcd", "worker"]
    ssh_key          = tls_private_key.global_key.private_key_pem
  }

  kubernetes_version = var.rke_kubernetes_version
}

resource "local_file" "kube_config_server_yaml" {
  filename = format("%s/%s", path.root, "kube_config_cluster.yaml")
  content  = rke_cluster.opni_cluster.kube_config_yaml
}