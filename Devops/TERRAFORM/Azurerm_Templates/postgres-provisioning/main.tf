

resource "azurerm_postgresql_server" "server" {
  name                = var.server_name
  location            = var.location
  resource_group_name = var.resource_group_name

  sku_name = var.sku_name

  storage_mb                   = var.storage_mb
  backup_retention_days        = var.backup_retention_days
  geo_redundant_backup_enabled = var.geo_redundant_backup_enabled

  administrator_login           = var.administrator_login
  administrator_login_password  = var.administrator_password
  version                       = var.server_version
  ssl_enforcement_enabled       = var.ssl_enforcement_enabled
  public_network_access_enabled = var.public_network_access_enabled


}

resource "azurerm_postgresql_database" "dbs" {
  count               = length(var.db_names)
  name                = var.db_names[count.index]
  resource_group_name = var.resource_group_name
  server_name         = azurerm_postgresql_server.server.name
  charset             = var.db_charset
  collation           = var.db_collation
}