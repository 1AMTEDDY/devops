
data "azurerm_subnet" "system_subnet" {
  name                 = "" #going to use for default node pool vnet_subnet_id
  resource_group_name  = var.resource_group_name
  virtual_network_name = ""
  address_prefixes     = [""]
}
data "azurerm_subnet" "subnet_1" {
      name     = ""
      resource_group_name  = var.resource_group_name #going to use for additional node pool vnet_subnet_id
      virtual_network_name = ""
      address_prefixes = [""]
      }
data "azurerm_subnet"  "subnet_2" {
        name     = "" #going to use for pod_subnet_id
        resource_group_name  = var.resource_group_name
        virtual_network_name = ""
        address_prefixes = [""]
      }



resource "azurerm_kubernetes_cluster" "k8s" {
  name                = var.cluster_name
  location            = var.cluster_location
  resource_group_name = var.resource_group_name
  dns_prefix = var.cluster_name

 default_node_pool {
    name                  = "system"
    node_count            = var.node_count
    vm_size               = var.node_vm_size
    os_disk_size_gb       = var.os_disk_size_gb
    type                  = "VirtualMachineScaleSets"
 #   availability_zones    = var.node_availability_zones
    enable_auto_scaling   = var.enable_auto_scaling
    min_count             = var.node_min_count
    max_count             = var.node_max_count
    max_pods              = var.node_max_pods
    enable_node_public_ip = false
    vnet_subnet_id = data.azurerm_subnet.system_subnet.id
    pod_subnet_id = data.azurerm_subnet.subnet_2.id
  }

  enable_pod_security_policy = var.pod_security_policy

  identity {
    type = "SystemAssigned"
  }

  role_based_access_control_enabled = true
    azure_active_directory_role_based_access_control {
      managed = true
      admin_group_object_ids = [
        ""
      ]
  }
   network_profile {
    network_plugin     = var.network_profile.network_plugin
    network_policy     = var.network_profile.network_policy
    service_cidr =  var.network_profile.service_cidr

  }

}



# Addons node pool

resource "azurerm_kubernetes_cluster_node_pool" "node_pool" {
      kubernetes_cluster_id = azurerm_kubernetes_cluster.k8s.id
      name                = ""
      vm_size             = "Standard_B2ms"
      os_disk_size_gb     = 128
      enable_auto_scaling = true
      node_count          = 1
      min_count           = 1
      max_count           = 10
      max_pods            = 250
      vnet_subnet_id = data.azurerm_subnet.subnet_1.id
      pod_subnet_id = data.azurerm_subnet.subnet_2.id
      node_labels = {
        role: "proxy"
      }
    }
resource "azurerm_kubernetes_cluster_node_pool" "node_pool" {
      kubernetes_cluster_id = azurerm_kubernetes_cluster.k8s.id
      name                = ""
      vm_size             = "Standard_B2ms"
      os_disk_size_gb     = 128
      enable_auto_scaling = true
      node_count          = 1
      min_count           = 1
      max_count           = 10
      max_pods            = 250
      vnet_subnet_id = data.azurerm_subnet.subnet_1.id
      pod_subnet_id = data.azurerm_subnet.subnet_2.id
      node_labels = {
        role: "webapp"
      }
    }
resource "azurerm_kubernetes_cluster_node_pool" "node_pool" {
      kubernetes_cluster_id = azurerm_kubernetes_cluster.k8s.id
      name                = ""
      vm_size             = "Standard_B2ms"
      os_disk_size_gb     = 128
      enable_auto_scaling = true
      node_count          = 1
      min_count           = 1
      max_count           = 10
      max_pods            = 250
      vnet_subnet_id = data.azurerm_subnet.subnet_1.id
      pod_subnet_id = data.azurerm_subnet.subnet_2.id
      node_labels = {
        role: "proxy"
      }
    }
resource "azurerm_kubernetes_cluster_node_pool" "node_pool" {
      kubernetes_cluster_id = azurerm_kubernetes_cluster.k8s.id
      name                = ""
      vm_size             = "Standard_B2ms"
      os_disk_size_gb     = 128
      enable_auto_scaling = true
      node_count          = 1
      min_count           = 1
      max_count           = 10
      max_pods            = 250
      vnet_subnet_id = data.azurerm_subnet.subnet_1.id
      pod_subnet_id = data.azurerm_subnet.subnet_2.id #this defines that the nodepools pods ip will be defined on this subnet
      node_labels = {
        role: "webapp"
      }
    }


