provider "alkira" {
  portal    = var.alk_portal
  username  = var.alk_username
  password  = var.alk_password
}

provider "aws" {
  region     = "us-east-2"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}