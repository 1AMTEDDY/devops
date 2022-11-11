resource "azurerm_virtual_network" "default" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = [var.address_space]

}
resource "azurerm_subnet" "subnet" {
    for_each = var.subnets
    name = each.value.name
    address_prefixes = each.value.address_prefixes
    resource_group_name = var.resource_group_name
    virtual_network_name = azurerm_virtual_network.default.name
}