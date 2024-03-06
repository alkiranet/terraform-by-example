/*
alkira_billing_tag
https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/resources/billing_tag
*/

# You could create additional blocks for each new resource
resource "alkira_billing_tag" "alpha" {
  name           = "product-team-alpha"
  description    = "Chargeback to Product Team Alpha"
}

resource "alkira_billing_tag" "shared_services" {
  name           = "shared-services"
  description    = "Shared Services Infrastructure"
}