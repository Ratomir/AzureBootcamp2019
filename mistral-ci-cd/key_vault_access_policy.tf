resource "azurerm_key_vault_access_policy" "demo_terraform" {
  key_vault_id = "${azurerm_key_vault.demo.id}"

  tenant_id = "${data.azurerm_client_config.current.tenant_id}"
  object_id = "${data.azurerm_client_config.current.service_principal_object_id}"
  #   application_id = "${var.client_id}"

  certificate_permissions = [
    "create",
    "delete",
    "deleteissuers",
    "get",
    "getissuers",
    "import",
    "list",
    "listissuers",
    "managecontacts",
    "manageissuers",
    "setissuers",
    "update",
  ]

  key_permissions = [
    "create",
    "get",
  ]

  secret_permissions = [
    "get",
    "list",
    "set",
    "delete"
  ]
}

resource "azurerm_key_vault_access_policy" "demo_ratomir" {
  key_vault_id = "${azurerm_key_vault.demo.id}"

  tenant_id = "${data.azurerm_client_config.current.tenant_id}"
  object_id = "${var.user_admin}"

  certificate_permissions = [
    "create",
    "delete",
    "deleteissuers",
    "get",
    "getissuers",
    "import",
    "list",
    "listissuers",
    "managecontacts",
    "manageissuers",
    "setissuers",
    "update",
  ]

  key_permissions = [
    "create",
    "get",
  ]

  secret_permissions = [
    "get",
    "list",
    "set",
    "delete"
  ]
}

# resource "azurerm_key_vault_access_policy" "demo_azuredevops" {
#   key_vault_id = "${azurerm_key_vault.demo.id}"

#   tenant_id = "${data.azurerm_client_config.current.tenant_id}"
#   object_id = "${data.azurerm_azuread_application.azure-devops.object_id}"

#   secret_permissions = [
#     "get",
#     "list",
#   ]
# }
