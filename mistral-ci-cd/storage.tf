resource "azurerm_storage_account" "databasereports" {
  name                     = "${var.projectname}dbreports"
  resource_group_name      = "${azurerm_resource_group.demoreports.name}"
  location                 = "${azurerm_resource_group.demoreports.location}"
  account_kind             = "BlobStorage"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "${var.env}"
  }
}

resource "azurerm_storage_container" "databasereports" {
  name                  = "databasereports"
  resource_group_name   = "${azurerm_resource_group.demoreports.name}"
  storage_account_name  = "${azurerm_storage_account.databasereports.name}"
  container_access_type = "private"
}