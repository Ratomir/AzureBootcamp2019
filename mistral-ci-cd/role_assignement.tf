resource "azurerm_role_assignment" "demo_terraform_api" {
  scope                = "/subscriptions/${var.subscription_id}/resourcegroups/${azurerm_resource_group.demo.name}/providers/microsoft.keyvault/vaults/${azurerm_key_vault.demo.name}"
  role_definition_name = "Contributor"
  principal_id         = "${data.azurerm_client_config.current.service_principal_object_id}"
}