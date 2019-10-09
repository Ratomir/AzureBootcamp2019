resource "azurerm_key_vault_secret" "demo_resource-group" {
  name         = "resource-group"
  value        = "${var.rg_name}-${var.env}"
  key_vault_id = "${azurerm_key_vault.demo.id}"
}

resource "azurerm_key_vault_secret" "blog_shadow-sqlserverdatabase" {
  name         = "shadow-sqlserverdatabase"
  value        = "WWI-DEV_Ratomir-Vukadin_SHADOW"
  key_vault_id = "${azurerm_key_vault.demo.id}"
}

resource "azurerm_key_vault_secret" "blog_short-sqlservername" {
  name         = "short-sqlservername"
  value        = "${var.sql_server}-sql-${var.env}-001"
  key_vault_id = "${azurerm_key_vault.demo.id}"
}

resource "azurerm_key_vault_secret" "blog_sqlserverdatabase" {
  name         = "sqlserverdatabase"
  value        = "WWI-${var.env}"
  key_vault_id = "${azurerm_key_vault.demo.id}"
}

resource "azurerm_key_vault_secret" "blog_ssdtsqlserverdatabase" {
  name         = "ssdtsqlserverdatabase"
  value        = "AdventureWorksLT-${var.env}"
  key_vault_id = "${azurerm_key_vault.demo.id}"
}

resource "azurerm_key_vault_secret" "blog_sqlservername" {
  name         = "sqlservername"
  value        = "${var.sql_server}-sql-${var.env}-001.database.windows.net"
  key_vault_id = "${azurerm_key_vault.demo.id}"
}

resource "azurerm_key_vault_secret" "blog_sqlserverpassword" {
  name         = "sqlserverpassword"
  value        = "${var.sql_database_password}"
  key_vault_id = "${azurerm_key_vault.demo.id}"
}

resource "azurerm_key_vault_secret" "blog_sqlserverusername" {
  name         = "sqlserverusername"
  value        = "${var.sql_database_username}"
  key_vault_id = "${azurerm_key_vault.demo.id}"
}

