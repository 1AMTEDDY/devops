variable "name" {
  type        = string
  description = "kv-westus2"

}

variable "location" {
  type        = string
  description = "WEST US 2"
}

variable "resource_group_name" {
  type        = string
  description = "rg-westus2"
}

variable "tenant_id" {
  type        = string
  description = "$ID"
}
#Soft delete retention days. Choose between 7-90 days
variable "soft_delete_retention_days" {
  type        = string
  description = "7"
}

variable "purge_protection_enabled" {
  type        = bool
  description = "Purge Protection Enabled."
  default     = true
}
#SKU Name. Possible values: ['standard', 'premium']
variable "sku_name" {
  type        = string
  description = "standard"
}
