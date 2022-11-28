resource "azurerm_kubernetes_cluster" "k8s" {
  name                = var.cluster_name
  location            = var.cluster_location
  resource_group_name = var.resource_group_name

  dns_prefix = var.cluster_name

 default_node_pool {
    name                  = "system"
    orchestrator_version  = var.kubernetes_version
    node_count            = var.node_count
    vm_size               = var.node_vm_size
    os_disk_size_gb       = var.os_disk_size_gb
    vnet_subnet_id        = data.azurerm_subnet.nodes.id
    type                  = "VirtualMachineScaleSets"
    availability_zones    = var.node_availability_zones
    enable_auto_scaling   = var.enable_auto_scaling
    min_count             = var.node_min_count
    max_count             = var.node_max_count
    max_pods              = var.node_max_pods
    enable_node_public_ip = false
  }

  enable_pod_security_policy = var.pod_security_policy

  identity {
    type = "SystemAssigned"
  }

role_based_access_control {
    enabled = true

    azure_active_directory {
      managed = true
      admin_group_object_ids = [
        data.cluster.id
      ]
    }
  }

}

