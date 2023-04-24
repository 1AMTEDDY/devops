data "google_service_account" "example" {
 #heres assuming you already have a service account deplpoyed if not comment this out
  account_id = "example"
}
locals {
  service_accounts = {
    "example" = {
        display_name = "example"
        account_id =  "example"
    } #add more here as we go
  }
  bigquery = {
    "bigquery_dev" = {
        dataset_id = "biquery_dev"
        dataset_name = "BIGQUERY_DEV"
    } #add more here
  }
  google_storage_bucket = {
    "storage_dev" = {
        name = "storage_dev"
        storage_class = "STANDARD"
    } #add more here
  }
}
### Service Accounts Here
module "service_accounts_dev" {
    source = "./modules/Service-Accounts"
    for_each  = local.service_accounts
    display_name = each.value.display_name
    project      = var.project
    account_id = each.value.account_id

}

### BigQuery Here

module "BigQuery_dev" {
    source = "./modules/BigQuery"
    for_each = local.bigquery
  dataset_id                  = each.value.dataset_id
  dataset_name               = each.value.dataset_name
  location                    = var.location
  project                     = var.project

}

## Storage Here

module "google_storage_bucket" {
    source = "./modules/cloud-storage"
    for_each = local.google_storage_bucket
    name                   = each.value.name
    project                = var.project
    location               = var.location
    storage_class          = each.value.storage_class

}

