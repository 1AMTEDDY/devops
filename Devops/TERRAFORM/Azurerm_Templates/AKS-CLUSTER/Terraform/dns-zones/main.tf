resource "azurerm_dns_zone" "dns_zone" {
    name = var.dns_zone
    resource_group_name = var.resource_group
}

resource "azurerm_private_dns_zone" "private_dns_zone" {
    name = var.private_dns_zone
    resource_group_name = var.resource_group
}

#resource "azurerm_private_dns_zone_virtual_network_link" "private_dns_vnet_link" {
#    name = var.private_dns_zone_vnet_link
#    registration_enabled = var.private_registration_enabled
  
#}