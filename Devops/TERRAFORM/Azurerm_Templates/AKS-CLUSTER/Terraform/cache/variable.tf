variable "location" {
  description = "Azure region in which instance will be hosted"
  type        = string
  default = ""
}

variable "resource_group_name" {
  description = "Name of the application ressource group, herited from infra module"
  type        = string
  default = ""
}
variable "redis_instance_name" {
  description = "The name of the Redis instance"
  default     = ""
}

variable "redis_family" {
  type        = string
  description = "The SKU family/pricing group to use. Valid values are `C` (for `Basic/Standard` SKU family) and `P` (for `Premium`)"
  default  = "P"
   
}

variable "capacity" {
  description = "Redis size: (Basic/Standard: 1,2,3,4,5,6) (Premium: 1,2,3,4)  https://docs.microsoft.com/fr-fr/azure/redis-cache/cache-how-to-premium-clustering"
  type        = number
  default     = 2
}

variable "sku_name" {
  description = "Redis Cache Sku name. Can be Basic, Standard or Premium"
  type        = string
  default     = "Premium"
}

variable "cluster_shard_count" {
  description = "Number of cluster shards desired"
  type        = number
  default     = 0
}


variable "authorized_cidrs" {
  description = "Map of authorized cidrs"
  type        = map(string)
  default = {
    "network" = "10.2.0.0/16"
  }
}

variable "allow_non_ssl_connections" {
  description = "Activate non SSL port (6779) for Redis connection"
  type        = bool
  default     = false
}

variable "minimum_tls_version" {
  description = "The minimum TLS version"
  type        = string
  default     = "1.2"
}


variable "subnet_id" {
  description = "The ID of the Subnet within which the Redis Cache should be deployed. Changing this forces a new resource to be created."
  type        = string
  default     = null
}


variable "redis_version" {
  description = "Redis version to deploy. Allowed values are 4 or 6"
  type        = number
  default     = 4
}

variable "zones" {
  description = "A list of a one or more Availability Zones, where the Redis Cache should be allocated."
  default     = [1, 2, 3]
  type        = list(number)
}
