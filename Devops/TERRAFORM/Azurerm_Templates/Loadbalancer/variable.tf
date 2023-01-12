variable "name" {
   default = "rg-dev-eastus2"
}
variable "location" {
  default = "westus2"
}
variable "ip_name" {
    default = "K8s-qa-public-IP"
}
variable "lb_name" {
  default = "lb-westus2"
}
variable "lb_sku" {
  default = "Standard"
}

variable "frontend_ip_name" {
  default = "KUBERNETES_FRONTEND_IP"
}
variable "backend_address_pool_name" {
  default = "BACKEND_POOL"
}
variable "pool_address" {
    default = "IP_ADDRESS"
}
variable "ip_address" {
  default = "20.22.21.247"
}
variable "vnet_name" {
    default = "LB_VNET"
}
variable "address_space" {
    type = list(string)
    default = [""]
}
