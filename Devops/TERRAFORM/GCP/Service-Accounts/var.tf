variable "project" {
  type        = string
  description = "Project id where service account will be created."
}

variable "prefix" {
  type        = string
  description = "Prefix applied to service account names."
  default     = ""
}

#variable "names" {
 # type        = string
 # description = "Names of the service accounts to create."
 # default     = ""
#}


variable "display_name" {
  type        = string
  description = "Display names of the created service accounts (defaults to 'Terraform-managed service account')"
  default     = ""
}

variable "description" {
  type        = string
  description = "Default description of the created service accounts (defaults to no description)"
  default     = "Dev Service account for Google AV Program"
}
variable "terraform-credentials" {
    type     = string
    default = ""
    description = "The GCP service account that terraform will use to authenticate to the project"

}
variable "region" {
    type = string
    default = ""

}
variable "zone" {
  type = string
  default = ""
}
variable "account_id" {
  type = string
  default = ""
  description = "the email address You're using for gcp"

}
