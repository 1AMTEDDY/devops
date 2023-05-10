# Variables are named and formatted to match the azurerm provider from terraform for simplicity
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account

variable "resource_group_name" {
    description = "The name of the resource group in which the storage account will be created"
    type = string
    default     = "rg-example"
}

variable "storage_account_name" {
    description = "The name of the storage account that will be created"
    type = string
    default     = "st-example"
}

variable "location" {
    description = "The location where module demo resource group will be created"
    type = string
    default     = "East Us 2"
}

variable "account_tier" {
    description = "The account tier that the storage account should be created in. This is NOT modifiable after creation"
    type = string
    default     = "Standard"
}

variable "account_replication_type" {
    description = "The replication type that the storage account should use. This is modifiable after creation"
    type = string
    default     = "LRS"
}

variable "tags" {
    description = "A map of the tags to use for the module demo resources that are deployed"
    type        = map(string)
    default = {
        environment = "Example"
        owner = ""
    }
}
