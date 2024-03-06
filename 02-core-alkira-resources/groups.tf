/*
alkira_group
https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/resources/group
*/

# You could define values in a list and use for_each to maximize code reuse
# Adding new resources would mean simply adding new values to the group_list
locals {

  group_list = ["training-dev", "training-stage", "training-prod"]

}

resource "alkira_group" "training" {

  for_each = toset(local.group_list)

  name         = each.key
  description  = "Created by Terraform"

}