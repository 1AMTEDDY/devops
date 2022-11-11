resource "azurerm_redis_cache" "redis" {
  name                = var.redis_instance_name
  location            = var.location
  resource_group_name = var.resource_group_name

  family   = var.redis_family
  sku_name = var.sku_name

  enable_non_ssl_port = var.allow_non_ssl_connections
  minimum_tls_version = var.minimum_tls_version
  shard_count         = var.sku_name == "Premium" ? var.cluster_shard_count : 0
  capacity            = var.capacity

  private_static_ip_address = var.private_static_ip_address
  subnet_id                 = var.subnet_id

  redis_version = var.redis_version
  zones         = var.zones

  public_network_access_enabled = false
  
  redis_configuration {
  }

}