# create service accounts
resource "google_service_account" "service_accounts" {
  for_each     = var.names
  display_name = var.display_name
  description  = index(var.names, each.value) >= length(var.descriptions) ? var.description : element(var.descriptions, index(var.names, each.value))
  project      = var.project
  prefix       = var.prefix
}

# common roles

resource "google_project_iam_member" "project-roles" {
  for_each = var.project_roles
  project = element(
    split(
      "=>",
      each.value.role
    ),
    0,
  )
  role = element(
    split(
      "=>",
      each.value.role
    ),
    1,
  )
  member = "serviceAccount:${google_service_account.service_accounts[each.value.name].email}"
}
