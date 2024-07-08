# Azure Cloud Connector

resource "alkira_connector_azure_vnet" "chrisnoon-vnet" {
  azure_vnet_id           = var.local_azure_vnet_id
  billing_tag_ids         = var.billing_tag_ids.0
  connection_mode         = var.connection_mode.0
  credential_id           = var.local_credential_id
  customer_asn            = var.local_customer_asn 
  cxp                     = var.local_cxp 
  enabled                 = true
  group                   = var.local_group 
  name                    = var.local_name
  routing_options         = "ADVERTISE_DEFAULT_ROUTE"
  scale_group_id          = null
  segment_id              = var.local_segment_id 
  size                    = var.local_size 
}
