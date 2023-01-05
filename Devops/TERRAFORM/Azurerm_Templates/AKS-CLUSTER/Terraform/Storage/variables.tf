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
