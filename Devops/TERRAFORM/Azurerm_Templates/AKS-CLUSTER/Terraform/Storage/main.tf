resource "azurerm_storage_account" "sa" {
  for_each = var.stgaccts
  name                     = each.value.name
  resource_group_name      = var.resource_group_name
  location                 = each.value.location
  account_kind             = each.value.kind
  account_replication_type = each.value.repl
  account_tier             = each.value.tier
}

resource "azurerm_storage_container" "sc" {
    for_each = var.stgcontainers
    name              = each.value.name
    storage_account_name = each.value.stg_account_name
    container_access_type = each.value.access_type
}