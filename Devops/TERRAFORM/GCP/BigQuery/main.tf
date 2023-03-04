resource "google_bigquery_dataset" "main" {
  dataset_id                  = var.dataset_id
  friendly_name               = var.dataset_name
  description                 = var.description
  location                    = var.location
  default_table_expiration_ms = var.default_table_expiration_ms
  max_time_travel_hours       = var.max_time_travel_hours
  project                     = var.project
  labels                      = var.dataset_labels

    dynamic "access" {
    for_each = var.access
    content {
      # BigQuery API converts IAM to primitive roles in its backend.

      # This causes Terraform to show a diff on every plan that uses IAM equivalent roles.

      # Thus, do the conversion between IAM to primitive role here to prevent the diff.

      role = lookup(local.iam_to_primitive, access.value.role, access.value.role)
      # Additionally, using null as a default value would lead to a permanant diff
      # See https://github.com/hashicorp/terraform-provider-google/issues/4085#issuecomment-516923872
      domain         = lookup(access.value, "domain", "")
      group_by_email = lookup(access.value, "group_by_email", "")
      user_by_email  = lookup(access.value, "user_by_email", "")
      special_group  = lookup(access.value, "special_group", "")
    }
  }
}



