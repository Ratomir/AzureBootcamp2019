resource "azurerm_resource_group" "demo" {
  name     = "${var.rg_name}-${var.env}"
  location = "West Europe"
}

resource "azurerm_resource_group" "demoreports" {
  name     = "${var.rg_name}-reports"
  location = "West Europe"
}

