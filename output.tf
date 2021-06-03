output "cluster_node_ip" {
  value = aws_instance.rke_server.public_ip
}

output "kubecfg_file_path" {
  value = format("%s/%s", path.root, "kube_config_cluster.yaml")
}