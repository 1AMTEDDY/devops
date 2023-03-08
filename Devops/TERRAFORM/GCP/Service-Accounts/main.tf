# create service accounts
# create service accounts
resource "google_service_account" "service_accounts" {
  #name    = var.names
  display_name = var.display_name
  description  = var.description
  project      = var.project
  account_id = var.account_id

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
