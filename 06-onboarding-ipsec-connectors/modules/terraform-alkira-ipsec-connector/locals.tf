locals {
  filter_segments = var.connector_ipsec_data.segment

  filter_billing_tags = flatten([
    for endpoint in var.connector_ipsec_data.endpoints : [
      for billing_tag in endpoint.billing_tags : billing_tag
    ]
  ])
}