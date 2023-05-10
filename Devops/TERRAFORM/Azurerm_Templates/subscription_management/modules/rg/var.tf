variable "resource_group_name" {
    description = "The name of the module demo resource group in which the resources will be created"
    type = string
    default     = "example_module_rg"
}

variable "location" {
    description = "The location where module demo resource group will be created"
    type = string
    default     = "East Us 2"
}

variable "tags" {
    description = "A map of the tags to use for the module demo resources that are deployed"
    type        = map(string)
    default = {
        environment = "Example"
        Owner = ""
    }
}
