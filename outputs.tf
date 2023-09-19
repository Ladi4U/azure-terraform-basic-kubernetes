output "id" {
  value = azurerm_kubernetes_cluster.myk8s[k8s-k9s-mcti-lab-central-canada-Pacific].id
}

output "kube_config" {
  sensitive = true
  value = azurerm_kubernetes_cluster.myk8s[*].kube_config_raw
}

output "client_key" {
  sensitive = true
  value = azurerm_kubernetes_cluster.myk8s[*].kube_config.0.client_key
}

output "client_certificate" {
  sensitive = true
  value = azurerm_kubernetes_cluster.myk8s[*].kube_config.0.client_certificate
}

output "cluster_ca_certificate" {
  sensitive = true
  value = azurerm_kubernetes_cluster.myk8s[*].kube_config.0.cluster_ca_certificate
}

output "host" {
  sensitive = true
  value = azurerm_kubernetes_cluster.myk8s[*].kube_config.0.host
}
