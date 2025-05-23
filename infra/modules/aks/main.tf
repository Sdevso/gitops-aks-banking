resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "${var.aks_cluster_name}-dns"

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = "Standard_B2s" # Free tier compatible
  }

  identity {
    type = "SystemAssigned"
  }

  kubernetes_version = var.kubernetes_version
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}
