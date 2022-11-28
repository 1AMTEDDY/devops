variable "dns_zone" {
     description = "the public dns zone"
     default = ""
     type = string
}

variable "private_dns_zone" {
    description = "the private dns zone"
    default = ""
    type = string
}

variable "resource_group" {
    description = "the name of the resource group"
    type = string
    default = ""
}

#variable "private_dns_zone_vnet_link" {
#     description = "virtual networks to create Private DNS virtual network links. This enables DNS  resolution and registration using Azure Private DNS"
#     default = []
#     type = list(string)
#}

#variable "private_registration_enabled" {
#    description = "is auto-registration of virtual machine records in the virtual network in the private DNS zone enabled"
#    type = bool
#    default = true
#  
#}