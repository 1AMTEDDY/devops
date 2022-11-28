data "azuread_client_config" "current" {}

resource "azuread_group" "dev2" {
  assignable_to_role = true
  for_each = var.azuread_group
  name = each.value.name
  owners             = [data.azuread_client_config.current.object_id]
  security_enabled   = true
}



