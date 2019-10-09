
resource "azurerm_mysql_server" "demo" {
  name                = "${var.sql_server}-mysql-${var.env}-001"
  location            = "${azurerm_resource_group.demo.location}"
  resource_group_name = "${azurerm_resource_group.demo.name}"

  sku {
    name     = "B_Gen5_1"
    capacity = 1
    tier     = "Basic"
    family   = "Gen5"
  }

  storage_profile {
    storage_mb            = 5120
    backup_retention_days = 7
    geo_redundant_backup  = "Disabled"
  }

  administrator_login          = "${var.sql_database_username}"
  administrator_login_password = "${var.sql_database_password}"
  version                      = "5.7"
  ssl_enforcement              = "Enabled"

  tags = {
    environment = "${var.env}"
  }
}

resource "azurerm_mysql_firewall_rule" "demo" {
  name                = "ratomirip"
  resource_group_name = "${azurerm_resource_group.demo.name}"
  server_name         = "${azurerm_mysql_server.demo.name}"
  start_ip_address    = "${var.ratomir-ip}"
  end_ip_address      = "${var.ratomir-ip}"
}