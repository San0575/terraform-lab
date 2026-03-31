	provider "azurerm" {
	  features {}
	}
    module "network" {
      source = "./modules/network"

      resource_group_name = var.resource_group_name
      location            = var.location
      vnet_name           = var.vnet_name
      subnet_name         = var.subnet_name
   }
    module "vm" {
      source = "./modules/vm"

      resource_group_name = var.resource_group_name
      location            = var.location

      subnet_id = module.network.subnet_id
      depends_on = [module.network]
    }
    module "aks" {
      source = "./modules/aks"

      resource_group_name = var.resource_group_name
      location            = var.location
      env                 = "dev"
      depends_on = [module.network] 
    }