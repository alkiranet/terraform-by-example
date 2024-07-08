# Variables

variable "local_connector-name" {
  type = string
  default = "" # example "chrisnoon-vpc"
}

variable "local_vpc_id" {
  type = string
  default = "" # example "vpc-xxxxx"
}

variable "local_vpc-cidr" {
  type = string
  default = ""  # example "10.12.0.0/16"
}

variable "local_aws_account_id" {
  type = string
  default = ""  # example "1234567890" 
}

variable "local_aws-region" {
  type = string
  default = "" # example "eu-west-1"
}

variable "local_credential-id" {
  type = string
  default = ""  # example "xxxxx-xxx-xxx-xxx-xxxxx"
}

variable "local_cpx" {
  type = string
  default = "" # example "US-WEST-1"
}

variable "local_group" {
  type = string
  default = "" # example "chrisnoon-aws"
}

variable "local_segment-id" {
  type = string
  default = ""  # example "1234"
}

variable "local_size" {
  type = string
  default = "" # example "SMALL"
}