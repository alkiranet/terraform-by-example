variable "connector_ipsec_data" {
  type = object({

    # base vars
    cxp                  = string
    enabled              = optional(string, true)
    group                = optional(string)
    name                 = string
    segment              = string
    size                 = optional(string, "SMALL")

    # endpoint vars
    endpoints  = optional(list(object({
      billing_tags              = optional(list(string), [])
      customer_gateway_ip       = string
      enable_tunnel_redundancy  = optional(string, false)
      name                      = string
      preshared_keys            = optional(list(string), [])
    })))

    # routing option vars
    routing_options  = optional(object({
      availability          = optional(string, "IKE_STATUS")
      bgp_auth_key          = optional(string)
      customer_gateway_asn  = optional(string)
      custom_prefixes       = optional(list(string))
      type                  = optional(string, "STATIC")
    }))

    # segment option vars
    segment_options  = optional(object({
      advertise_default_route   = optional(string, false)
      advertise_on_prem_routes  = optional(string, false)
    }))

    # add NAT rule?
    nat_rule  = optional(object({

      # match conditions
      create_new_rule      = optional(string, false)
      match_protocol       = optional(string, "any")
      match_src_prefix     = optional(string)
      match_dst_prefix     = optional(string)
      match_src_ports      = optional(string, "any")
      match_dst_port       = optional(string, "any")

      # action
      action_src_prefix    = optional(string, "")
    }))

  })
}