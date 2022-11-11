variable "name" {
  type        = string
  description = "vnet-westus2"
}

variable "location" {
  type        = string
  description = "WESTUS2"
}

variable "resource_group_name" {
  type        = string
  description = "rg-westus2"
}
variable "address_space" {
  type        = string
  description = "cidr"
}

variable "subnets" {
    type = map(any)
    default ={
      subnet_1 = {
        name     = "snet1"
        address_prefixes = ["ip-range"]
      }
      subnet_2 = {
        name     = "snet2"
        address_prefixes = ["ip-range"]
      }
      subnet_2 = {
        name     = "snet3"
        address_prefixes = ["ip-range"]
      }
    }
}