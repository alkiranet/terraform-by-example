locals {
  name               = "www-east"
  billing_tag        = "shared-services"
  bundle             = "VM_SERIES_BUNDLE_2"
  cxp                = "US-EAST-2"
  description        = "East Region - Internet Exit"
  license_type       = "PAY_AS_YOU_GO"
  max_instance_count = "1"
  size               = "SMALL"
  segment            = "training-segment"
  type               = "VM-300"
  version            = "10.2.3"

  policy = {
    description      = "Internet Egress"
    enabled          = "true"
    dscp             = "any"
    dst_ip           = "any"
    src_ip           = "any"
    protocol         = "any"
    src_ports        = ["any"]
    dst_ports        = ["any"]
    from_groups      = ["-1"] # all groups
    rule_action      = "ALLOW"
    service_type     = ["PAN"]
  }

}