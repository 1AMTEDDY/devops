variable "rg-name" {
  default       = "rg"
  description   = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "st-name" {
  default       = ""
  description   = "Naming Convention of the storage accounts"
}
variable "team-name" {
  default       = ""
  description   = "name of the team for this subscription, used to populate resource names"
}
variable "tag-env" {
  default = "nonprd"
  description   = "Tag for environment the subscription is for"
}

variable "tag-owner" {
  default = ""
  description   = "Owner of the Subscription"
}
variable "primary-region" {
  default = "eastus2"
  description   = "Location of the resources to be created"
}
