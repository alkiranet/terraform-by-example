/*
alkira_segment
https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/resources/segment
*/
resource "alkira_segment" "training" {
  name   = "training-segment"
  asn    = "65514"
  cidrs  = ["10.240.1.0/24", "10.240.2.0/24"]
}