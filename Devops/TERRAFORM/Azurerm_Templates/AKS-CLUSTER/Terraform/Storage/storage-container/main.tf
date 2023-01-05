resource "azurerm_storage_container" "sc" {
    for_each = var.stgcontainers
    name              = each.value.name
    storage_account_name = each.value.stg_account_name
    container_access_type = each.value.access_type
}