##############################################
######### Azure SQL Server/Database ##########
##############################################

resource "azurerm_sql_server" "demo" {
  name                         = "${var.sql_server}-sql-${var.env}-001"
  resource_group_name          = "${azurerm_resource_group.demo.name}"
  location                     = "${azurerm_resource_group.demo.location}"
  version                      = "12.0"
  administrator_login          = "${var.sql_database_username}"
  administrator_login_password = "${var.sql_database_password}"

  tags = {
    environment = "${var.env}"
  }
}

# resource "azurerm_sql_database" "blog" {
#   name                = "IdentityDatabase"
#   resource_group_name = "${azurerm_resource_group.blog.name}"
#   location            = "${azurerm_resource_group.blog.location}"
#   server_name         = "${azurerm_sql_server.blog.name}"
#   create_mode         = "Default"
#   edition             = "Basic"
# }

resource "azurerm_sql_firewall_rule" "demo" {
  name                = "Ratomir ip address"
  resource_group_name = "${azurerm_resource_group.demo.name}"
  server_name         = "${azurerm_sql_server.demo.name}"
  start_ip_address    = "${var.ratomir-ip}"
  end_ip_address      = "${var.ratomir-ip}"
}

resource "azurerm_sql_active_directory_administrator" "demo" {
  server_name         = "${azurerm_sql_server.demo.name}"
  resource_group_name = "${azurerm_resource_group.demo.name}"
  login               = "ratomir@live.com"
  tenant_id           = "${data.azurerm_client_config.current.tenant_id}"
  object_id           = "${var.user_admin}"
}
