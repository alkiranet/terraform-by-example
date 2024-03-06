data "alkira_segment" "training" {
  name = local.segment
}

data "alkira_billing_tag" "shared_services" {
  name = local.billing_tag
}