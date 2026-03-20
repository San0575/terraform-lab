	variable "resource_group_name" {
	  description = "Name of the resource group"
	  type        = string
	}
	
	variable "location" {
	  description = "Azure region"
	  type        = string
	}
	
	variable "vnet_name" {
	  description = "Virtual Network name"
	  type        = string
	}
	
	variable "subnet_name" {
	  description = "Subnet name"
	  type        = string
	}
    variable "vm_name" {
        description = "Virtual Machine name"
        type        = string
    }

    variable "admin_username" {
        description = "Admin username for VM"
        type        = string
    }

    variable "vm_size" {
        description = "Size of the VM"
        type        = string
    }