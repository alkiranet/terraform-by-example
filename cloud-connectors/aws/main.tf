# AWS Cloud Connector

resource "alkira_connector_aws_vpc" "chrisnoon-vpc" {
  name     = var.local_connector-name
  vpc_id   = var.local_vpc_id
  vpc_cidr = [var.local_vpc-cidr]

  aws_account_id = var.local_aws_account_id
  aws_region     = var.local_aws-region

  credential_id = var.local_credential-id
  cxp           = var.local_cpx
  group         = var.local_group               
  segment_id    = var.local_segment-id          
  size          = var.local_size
}