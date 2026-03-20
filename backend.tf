terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "tfstatesan5809"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}
