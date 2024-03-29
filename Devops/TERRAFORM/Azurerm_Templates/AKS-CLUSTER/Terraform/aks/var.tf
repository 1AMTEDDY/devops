# Active Directory

# variable "aad_group_name" {
#   description = "Name of the Azure AD group for cluster-admin access"
#   type        = string
# }

#############################################################################
# Kubernetes cluster

variable "cluster_name" {
  type        = string
  description = "Name of the AKS cluster"
  default = ""
}

variable "resource_group_name" {
    type = string
    description = "The resource group name"

    default = ""
}

variable "cluster_location" {
  type        = string
  description = "The Azure Region where the Resource Group should exist."
  default = "eastus2"
}


 variable rbac {
   type        = bool
   default     = true
   description = "Enable RBAC on the Kubernetes API"
 }

variable "pod_security_policy" {
  type        = bool
  description = "Enable PodSecurityPolicy the Kubernetes API"
  default = false
}


############
#Default node pool
variable "node_count" {
  type        = number
  description = "The default node pool instance count"
  default = 2
}

variable "node_vm_size" {
  type        = string
  description = "The Azure VM instance type"
   default     = "Standard_B2ms"
}

variable "os_disk_size_gb" {
  default     = 128
  type        = number
  description = "Default node pool disk size"
}

variable "enable_auto_scaling" {
  type        = bool
  description = "Enable autoscaling on the default node pool"
}

variable "node_min_count" {
  default     = 1
  type        = number
  description = "Default node pool intial count (used with autoscaling)"
}

variable "node_max_count" {
  default     = 10
  type        = number
  description = "Default node pool max count (use with autoscaling)"
}

variable "node_max_pods" {
  default     = 250
  type        = number
  description = "Total amount of pods allowed per node"
}

#variable "node_availability_zones" {
#  default     = [1, 2, 3]
#  type        = list(number)
#  description = "The availability zones to place the node pool instances"
#}
variable "network_profile" {

  description = "(Optional) Sets up network profile for Advanced Networking."
  default = {
    # Use azure-cni for advanced networking
    network_plugin = "azure"
    # Sets up network policy to be used with Azure CNI. Currently supported values are calico and azure."
    network_policy     = "azure"
    service_cidr    = "" #shouldnt overlap with aks vnet and subnet range, should be different in each cluster
  }

}


