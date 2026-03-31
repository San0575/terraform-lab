variable "env" {
    description = "Environment name (e.g., dev, prod)"
    type        = string
}
variable "location" {
    description = "Azure region"
    type        = string
}
variable "resource_group_name" {
    description = "Name of the resource group"
    type        = string
}
variable "vnet_name" {
    description = "The name of the virtual network for the AKS cluster"
    type        = string
}
variable "subnet_name" {
  description = "The name of the subnet for the AKS cluster"
  type        = string
}
variable "subnet_id" {
  description = "The ID of the subnet for the AKS cluster"
  type        = string
}