/*
alkira_policy_prefix_list
https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/resources/policy_prefix_list
*/
locals {
  prefix_lists = {
    "default" = {
      description = "Default Route"
      prefixes    = ["0.0.0.0/0"]
    },
    "rfc1918" = {
      description = "RFC1918 Addresses"
      prefixes    = ["10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16"]
    },
    "cloud_app" = {
      description = "Money Making Application"
      prefixes    = ["10.50.1.0/24", "10.50.2.0/24", "10.50.3.0/24", "10.50.4.0/24"]
    }
  }
}

resource "alkira_policy_prefix_list" "training" {
  for_each = local.prefix_lists

  name        = each.key
  description = each.value.description
  prefixes    = each.value.prefixes

}