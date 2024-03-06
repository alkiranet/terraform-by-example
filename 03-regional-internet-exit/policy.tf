/*
alkira_policy_rule
https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/resources/policy_rule
*/
resource "alkira_policy_rule" "to_fw" {
  name                      = format("rule-%s", local.name)
  description               = local.policy.description
  dst_ip                    = local.policy.dst_ip
  src_ip                    = local.policy.src_ip
  dscp                      = local.policy.dscp
  protocol                  = local.policy.protocol
  src_ports                 = local.policy.src_ports
  dst_ports                 = local.policy.dst_ports
  rule_action               = local.policy.rule_action
  rule_action_service_types = local.policy.service_type
}

/*
alkira_policy_rule_list
https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/resources/policy_rule_list
*/
resource "alkira_policy_rule_list" "to_fw" {
  name        = format("rule-list-%s", local.name)
  description = local.policy.description

  rules {
    priority = 1
    rule_id  = alkira_policy_rule.to_fw.id
  }

}

/*
alkira_policy
https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/resources/policy
*/
resource "alkira_policy" "training" {
  name         = format("policy-%s", local.name)
  description  = local.policy.description
  enabled      = local.policy.enabled
  from_groups  = local.policy.from_groups
  to_groups    = [alkira_group.east_www.id]
  rule_list_id = alkira_policy_rule_list.to_fw.id
  segment_ids  = [data.alkira_segment.training.id]
}