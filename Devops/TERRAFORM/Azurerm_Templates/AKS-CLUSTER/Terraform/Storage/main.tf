resource "azurerm_storage_account" "sa" {
  for_each = var.stgaccts
  name                     = each.value.name
  resource_group_name      = var.resource_group_name
  location                 = each.value.location
  account_kind             = each.value.kind
  account_replication_type = each.value.repl
  account_tier             = each.value.tier
}

