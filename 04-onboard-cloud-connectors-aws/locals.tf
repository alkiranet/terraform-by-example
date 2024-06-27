locals {
  aws_vpc_cidr       = "10.254.0.0/16"
  aws_subnet_cidr    = "10.254.1.0/24"
  aws_vpc_name       = "training-vpc"
  aws_subnet_name    = "training-subnet"
  alkira_segment     = "training-segment"
  alkira_group       = "training-dev"
  alkira_billing_tag = "product-team-alpha"
}