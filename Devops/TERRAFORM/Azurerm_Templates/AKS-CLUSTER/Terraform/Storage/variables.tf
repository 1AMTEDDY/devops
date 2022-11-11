#create multiple storage account with storage containers in them
variable "resource_group_name" {
  type        = string
  description = "rg-westus2"

}
variable "stgaccts" {
  type = map(object({
    name     = string
    location = string
    kind     = string
    repl     = string
    tier     = string
  }))
  default = {
    "sa1" = {
      name     = "sa1"
      location = "EASTUS2"
      kind     = "StorageV2"
      repl     = "LRS"
      tier     = "Standard"
    },
    "sa2" = {
      name     = "sa2"
      location = "WestUS2"
      kind     = "StorageV2"
      repl     = "GRS"
      tier     = "Standard"
    }
  }
}
variable "stgcontainers" {
  type = map(object({
    name     = string
    stg_account_name = string
    access_type = string
  }))
    default = {
    "sc1" = {
      name             = "storage1"
      stg_account_name = "sa1"
      access_type      = "container"
    },
    "sc2" = {
      name             = "storage2"
      stg_account_name = "sa2"
      access_type      = "private"
    }
  }
}