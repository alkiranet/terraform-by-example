locals {
  azure_region          = "eastus"
  azure_vnet_cidr       = "10.253.0.0/16"
  azure_subnet_cidr     = "10.253.1.0/24"
  azure_vnet_name       = "training-vnet"
  azure_subnet_name     = "training-subnet"
  alkira_segment        = "training-segment"
  alkira_group          = "training-dev"
  alkira_billing_tag    = "product-team-alpha"
}