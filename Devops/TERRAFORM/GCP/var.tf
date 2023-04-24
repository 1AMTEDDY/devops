variable "terraform-credentials" {
    type     = string
    default = "/codefresh/volume/account.json"
    #change to local json path when provisioning from local.
    description = "The GCP service account that terraform will use to authenticate to the project"

}
variable "region" {
    type = string
    default = "us-east1"

}
variable "zone" {
  type = string
  default = "us-east1a"
}
variable "project" {
  type        = string
  description = "Project id where service account will be created."
  default = "pacman-wwt-dev-380219"
}

