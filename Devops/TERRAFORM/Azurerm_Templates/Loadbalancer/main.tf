data "azurerm_resource_group" "dev" {
  name     = var.name
}
resource "azurerm_virtual_network" "lb_vnet" {
    name = var.vnet_name
    resource_group_name = data.azurerm_resource_group.dev.name
    location = var.location
    address_space = var.address_space
}

resource "azurerm_public_ip" "dev" {
  name                = var.ip_name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.dev.name
  allocation_method   = "Static"
  sku = var.lb_sku
}

resource "azurerm_lb" "lb_dev" {
  name                = var.lb_name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.dev.name
  sku                 = var.lb_sku


  frontend_ip_configuration {
    name                 = var.frontend_ip_name
    public_ip_address_id = azurerm_public_ip.dev.id
  }
}
resource "azurerm_lb_backend_address_pool" "lb_backend" {
  name            = var.backend_address_pool_name
  loadbalancer_id = azurerm_lb.lb_dev.id
}

resource "azurerm_lb_backend_address_pool_address" "lb_backend_address" {
    name = var.pool_address
    backend_address_pool_id = azurerm_lb_backend_address_pool.lb_backend.id
    virtual_network_id = azurerm_virtual_network.lb_vnet.id
    ip_address =  var.ip_address
}
