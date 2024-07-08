# IPsec connector 

resource "alkira_connector_ipsec" "Branch" {
  cxp            = var.local_cxp
  enabled        = var.local_enabled
  group          = var.local_group
  name           = var.local_name
  scale_group_id = var.local_scale_group_id
  segment_id     = var.local_segment_id
  size           = var.local_size
  vpn_mode       = var.local_vpn_mode
  endpoint {
    billing_tag_ids          = var.local_endpoint_billing_tag_ids.0
    customer_gateway_ip      = var.local_endpoint_customer_gateway_ip
    enable_tunnel_redundancy = var.local_endpoint_enable_tunnel_redundancy
    ha_mode                  = var.local_endpoint_ha_mode
    name                     = var.local_endpoint_name
    preshared_keys           = var.preshared_keys.0
  }
}
