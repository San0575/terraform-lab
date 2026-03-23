	resource "azurerm_resource_group" "rg" {
	  name     = var.resource_group_name
	  location = var.location

      tags = {
        environment = "dev"
        project     = "terraform-lab"
      }
	}
	
	resource "azurerm_virtual_network" "vnet" {
	  name                = var.vnet_name
	  address_space       = ["10.0.0.0/16"]
	  location            = var.location
	  resource_group_name = var.resource_group_name
	  depends_on = [azurerm_resource_group.rg]
	}
	
	resource "azurerm_subnet" "subnet" {
	  name                 = var.subnet_name
	  resource_group_name  = var.resource_group_name
	  virtual_network_name = var.vnet_name
	  address_prefixes     = ["10.0.1.0/24"]
	  depends_on = [azurerm_virtual_network.vnet, azurerm_resource_group.rg]
	  virtual_network_name = var.vnet_name
	  address_prefixes     = ["10.0.1.0/24"]
	}