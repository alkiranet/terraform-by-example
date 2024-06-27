resource "azurerm_virtual_network" "training" {

  name                = local.azure_vnet_name
  address_space       = [local.azure_vnet_cidr]
  resource_group_name = var.azr_resource_group
  location            = local.azure_region

}

resource "azurerm_subnet" "training" {

  name                  = local.azure_subnet_name
  resource_group_name   = var.azr_resource_group
  virtual_network_name  = local.azure_vnet_name
  address_prefixes      = [local.azure_subnet_cidr]

  depends_on = [
    azurerm_virtual_network.training
  ]

}

resource "alkira_credential_azure_vnet" "training" {
  name            = "azure-training"
  application_id  = var.azr_client_id 
  secret_key      = var.azr_client_secret
  tenant_id       = var.azr_tenant_id
  subscription_id = var.azr_subscription_id
}

resource "alkira_connector_azure_vnet" "training" {
  azure_vnet_id           = azurerm_virtual_network.training.id
  credential_id           = alkira_credential_azure_vnet.training.id
  cxp                     = "US-EAST-2"
  enabled                 = true
  group                   = data.alkira_group.training.name
  name                    = format("connector-%s", local.azure_vnet_name)
  segment_id              = data.alkira_segment.training.id
  size                    = "SMALL"

  vnet_cidr {
    cidr            = local.azure_vnet_cidr
    routing_options = "ADVERTISE_DEFAULT_ROUTE"
  }

  depends_on = [
    azurerm_virtual_network.training,
    azurerm_subnet.training
  ]

}