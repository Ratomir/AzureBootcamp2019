#Set the Provider
terraform {
  backend "azurerm" {
    storage_account_name = "tfstatemaestraldemo"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    resource_group_name  = "rg-terraform"
    access_key           = "XXX"
  }
}

provider "azurerm" {
  version         = ">= 1.34.0" #Use the last version tested through an Azure DevOps pipeline here : https://dev.azure.com/jamesdld23/vpc_lab/_build
  subscription_id = "${var.subscription_id}"
  client_id       = "${var.client_id}"
  client_secret   = "${var.client_secret}"
  tenant_id       = "${var.tenant_id}"
}
