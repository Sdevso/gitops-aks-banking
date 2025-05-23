variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "aks_cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the AKS cluster"
  type        = number
  default     = 1
}

variable "kubernetes_version" {
  description = "Kubernetes version for the AKS cluster"
  type        = string
  default     = "1.25.6"
}

variable "location" {
  description = "Azure region for the resources"
  type        = string
  default     = "East US"
}
