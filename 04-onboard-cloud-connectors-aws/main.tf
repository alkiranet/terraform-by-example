resource "aws_vpc" "training" {
  cidr_block       = local.aws_vpc_cidr

  tags = {
    Name = local.aws_vpc_name
  }

}

resource "aws_subnet" "training" {
  vpc_id     = aws_vpc.training.id
  cidr_block = local.aws_subnet_cidr

  tags = {
    Name = local.aws_subnet_name
  }

}

resource "alkira_credential_aws_vpc" "training" {
  name           = "aws-training"
  aws_access_key = var.aws_access_key
  aws_secret_key = var.aws_secret_key
  type           = "ACCESS_KEY"
}

resource "alkira_connector_aws_vpc" "training" {
  name           = format("connector-%s", local.aws_vpc_name)
  vpc_id         = aws_vpc.training.id
  vpc_cidr       = [aws_vpc.training.cidr_block]

  aws_account_id = var.aws_account_id
  aws_region     = var.aws_region

  credential_id  = alkira_credential_aws_vpc.training.id
  cxp            = "US-EAST-2"
  group          = data.alkira_group.training.name
  segment_id     = data.alkira_segment.training.id
  size           = "SMALL"

  vpc_route_table {
    id       = aws_vpc.training.default_route_table_id
    options  = "ADVERTISE_DEFAULT_ROUTE"
  }


}