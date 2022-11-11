#configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "$ID"
}
# Get an existing resource group
data "azurerm_resource_group" "DNS_rg" {
  name     = "DNS_rg"
}
# Create new DNS zone
resource "azurerm_dns_zone" "example" {
    name               = "example.io"
    resource_group_name = data.azurerm_resource_group.DNS_rg.name
}
#Display name servers
output "name_servers" {
  value=azurerm_dns_zone.example.name_servers
}
#create a record
resource "azurerm_dns_cname_record" "example" {
  name                = "cname"
  zone_name           = azurerm_dns_zone.example.name
  resource_group_name = data.azurerm_resource_group.dns-rg.name
  ttl                 = 300
  record              = "insert_value"
}
