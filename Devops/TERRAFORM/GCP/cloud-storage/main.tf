resource "google_storage_bucket" "buckets" {
  name                     = var.names
  project                  = var.project_id
  location                 = var.location
  storage_class            = var.storage_class
#  labels                   = var.labels
  public_access_prevention = var.public_access_prevention
}
