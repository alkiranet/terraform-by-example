# Variables
  
variable "local_auto_scale" {
  type = string
  default = "" # example "ON"
} 

variable "local_billing_tag_ids" {
  type = string
  default = [""] # example "12345"
}

variable "local_cxp" {
  type = string
  default = "" # example "US-WEST-1"
}

variable "local_license_type" {
  type = string
  default = "" # example "PAY_AS_YOU_GO"
}

variable "local_management_server_ip" {
  type = string
  default = "" # example "1.1.1.1"
}

variable "local_management_server_segment_id" {
  type = string
  default = "" # example "1234"
}

variable "local_max_instance_count" {
  type = string
  default = "" # example "4"
}

variable "local_min_instance_count" {
  type = string
  default = "" # example "1"
}

variable "local_name" {
  type = string
  default = "" # example "FW1"
}

variable "local_password" {
  type = string
  default = "" # example "null"
}

variable "local_segment_ids" {
  type = string
  default = [""] # example "null"
}

variable "local_size" {
  type = string
  default = "" # example "SMALL"
}

variable "local_tunnel_protocol" {
  type = string
  default = "" # example "IPSEC"
}

variable "local_username" {
  type = string
  default = "" # example "null"
}

variable "local_version" {
  type = string
  default = "" # example "7.4.3"
}

variable "local_instance_name" {
  type = string
  default = "" # example "FW1-instance-1"
}

variable "local_instance_segment_id" {
  type = string
  default = "" # example "qwertyuiop"
}

variable "local_instance_zone_name" {
  type = string
  default = "" # example "zonename"
}

variable "local_instance_groups" {
  type = string
  default = [""] # example ""
}
