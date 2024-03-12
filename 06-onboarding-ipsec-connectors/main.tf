module "ipsec_connector" {
  source = "./modules/terraform-alkira-ipsec-connector"

  connector_ipsec_data = {
    cxp        = "US-EAST-2"
    group      = "training-prod"
    name       = "site-123456"
    segment    = "training-segment"

    endpoints = [
      {
        billing_tags          = ["shared-services"]
        customer_gateway_ip   = "2.2.2.2"
        name                  = "endpoint1"
      }
    ]

    routing_options = {
      custom_prefixes = ["1.1.1.1/32", "1.1.1.2/32"]
    }

    nat_rule = {
      create_new_rule     = true
      match_src_prefix    = "10.1.1.20/32"
      match_dst_prefix    = "prod-nat"
      action_src_prefix   = "10.1.1.1/32"
    }

  }
}