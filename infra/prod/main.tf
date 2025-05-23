module "aks" {
  source              = "../modules/aks"
  resource_group_name = "prod-resource-group"
  aks_cluster_name    = "prod-aks-cluster"
  node_count          = 2
  kubernetes_version  = "1.25.6"
  location            = "East US"
}

output "kube_config" {
  value = module.aks.kube_config
}

output "aks_cluster_name" {
  value = module.aks.aks_cluster_name
}
