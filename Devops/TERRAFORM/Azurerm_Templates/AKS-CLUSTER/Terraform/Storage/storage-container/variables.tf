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