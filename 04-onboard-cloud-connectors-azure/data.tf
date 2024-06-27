data "alkira_segment" "training" {
  name = local.alkira_segment
}

data "alkira_group" "training" {
  name = local.alkira_group
}

data "alkira_billing_tag" "training" {
  name = local.alkira_billing_tag
}