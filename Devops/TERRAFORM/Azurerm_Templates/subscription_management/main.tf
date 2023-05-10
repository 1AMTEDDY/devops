
# ------------------------------------------------------------------------------------------------------------------------
# DATA SECTION - Enter Read of resources or users/service principals here
# ------------------------------------------------------------------------------------------------------------------------

# Read Current Subscription Data for later use
data "azurerm_subscription" "example" {
  subscription_id = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
}
data "azuread_user" "example" {
  user_principal_name = ""
}

# ------------------------------------------------------------------------------------------------------------------------
# Resource Group SECTION - Create & Manage Resource Groups for this subscription here
# ------------------------------------------------------------------------------------------------------------------------

# RESOURCE GROUPS HERE
# This is the NONPRD Resource Group for EUC Storage Account 001
module "*" {
  source              = "./modules/resource-groups"
  resource_group_name = "${var.rg-name}-${var.st-name}-${var.team-name}-001"
  location            = var.primary-region
  tags = {
    environment = var.tag-env
    owner       = var.tag-owner
  }
}
# ------------------------------------------------------------------------------------------------------------------------
# Storage Account SECTION - Create & Manage Storage Accounts for this subscription here
# ------------------------------------------------------------------------------------------------------------------------

# STORAGE ACCOUNTS HERE

module "*" {
  source                   = "./modules/storage"
  resource_group_name      = module.*.name
  storage_account_name     = "${var.st-name}${var.team-name}"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  location                 = module.*.location
  tags = {
    environment = var.tag-env
    owner       = var.tag-owner
  }
}
# ------------------------------------------------------------------------------------------------------------------------
# Permissions & RBAC SECTION - Create & Manage Permissions & RBAC for this subscription here
# ------------------------------------------------------------------------------------------------------------------------


# Permissions to Subscription:
resource "azurerm_role_assignment" "" {
  scope                = data.azurerm_subscription.example.id
  role_definition_name = "Reader"
  principal_id         = data.azuread_user.example.id
}



