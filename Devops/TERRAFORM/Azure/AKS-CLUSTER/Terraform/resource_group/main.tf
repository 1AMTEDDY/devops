# Create a resource group
resource "azurerm_resource_group" "rg-dev-eastus2" {
  name     = var.name
  location = var.location
}