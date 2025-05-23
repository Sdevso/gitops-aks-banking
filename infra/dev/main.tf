module "aks" {
  source              = "../modules/aks"
  resource_group_name = "dev-resource-group"
  aks_cluster_name    = "dev-aks-cluster"
  node_count          = 1
  kubernetes_version  = "1.32.4"
  location            = "East US"
}

output "kube_config" {
  value     = module.aks.kube_config
  sensitive = true
}

output "aks_cluster_name" {
  value = module.aks.aks_cluster_name
}
