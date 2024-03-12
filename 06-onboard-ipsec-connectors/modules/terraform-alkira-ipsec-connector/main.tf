# let's generate random strings for PSKs
resource "random_string" "psk" {
  count    = 2
  length   = 32
  special  = true
}

# only create new prefix lists when type == "STATIC"
resource "alkira_policy_prefix_list" "training" {
  count = var.connector_ipsec_data.routing_options.type == "STATIC" ? 1 : 0

  name         = format("list-%s", var.connector_ipsec_data.name)
  description  = "Created by Terraform"
  prefixes     = var.connector_ipsec_data.routing_options.custom_prefixes
}

/*
alkira_connector_ipsec
https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/resources/connector_ipsec
*/
resource "alkira_connector_ipsec" "connector" {
  cxp         = var.connector_ipsec_data.cxp
  enabled     = var.connector_ipsec_data.enabled
  group       = data.alkira_group.training.name
  name        = var.connector_ipsec_data.name
  segment_id  = data.alkira_segment.training.id
  size        = var.connector_ipsec_data.size
  vpn_mode    = "ROUTE_BASED"

  dynamic "endpoint" {
    for_each = var.connector_ipsec_data.endpoints
    content {
      billing_tag_ids           = [for billing_tag in endpoint.value.billing_tags : lookup(data.alkira_billing_tag.training[billing_tag], "id", null)]
      customer_gateway_ip       = endpoint.value.customer_gateway_ip
      enable_tunnel_redundancy  = endpoint.value.enable_tunnel_redundancy
      name                      = endpoint.value.name

      # Let's dynamically generate 2 PSKs if non are provided
      preshared_keys            = length(endpoint.value.preshared_keys) > 0 ? endpoint.value.preshared_keys : [
        for i in range(2) : random_string.psk[i].result
    ]

    }
  }

  routing_options {
    availability          = var.connector_ipsec_data.routing_options.availability
    bgp_auth_key          = var.connector_ipsec_data.routing_options.bgp_auth_key
    customer_gateway_asn  = var.connector_ipsec_data.routing_options.customer_gateway_asn
    prefix_list_id        = var.connector_ipsec_data.routing_options.type == "STATIC" ? alkira_policy_prefix_list.training[0].id : null
    type                  = var.connector_ipsec_data.routing_options.type
  }

}

/*
alkira_policy_nat_rule
https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/resources/policy_nat_rule
*/
resource "alkira_policy_nat_rule" "training" {
  name          = format("nat-rule-%s", var.connector_ipsec_data.name)
  description   = "Created by Terraform"
  enabled       = true

  match {
    src_prefixes         = [var.connector_ipsec_data.nat_rule.match_src_prefix]
    dst_prefix_list_ids  = [data.alkira_policy_prefix_list.training.id]
    protocol             = var.connector_ipsec_data.nat_rule.match_protocol
  }

  action {
    src_addr_translation_type     = "STATIC_IP"
    src_addr_translation_prefixes = [var.connector_ipsec_data.nat_rule.action_src_prefix]
    dst_addr_translation_type     = "NONE"
  }
}