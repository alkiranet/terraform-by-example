data "alkira_segment" "training" {
  name = var.connector_ipsec_data.segment
}

data "alkira_group" "training" {
  name = var.connector_ipsec_data.group
}

data "alkira_policy_prefix_list" "training" {
  name = var.connector_ipsec_data.nat_rule.match_dst_prefix
}

data "alkira_billing_tag" "training" {

  for_each = {
    for k, v in toset(local.filter_billing_tags) : k => v
  }

  name = each.key

}