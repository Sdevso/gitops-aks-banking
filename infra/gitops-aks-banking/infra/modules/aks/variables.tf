variable "aks_cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "location" {
  description = "Azure region for the resources"
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the AKS cluster"
  type        = number
}

variable "kubernetes_version" {
  description = "Kubernetes version for the AKS cluster"
  type        = string
}