# Variables

variable "local_cxp" {
  type = string
  default = "" # example "US-WEST-1"
  }

variable "local_enabled" {
  type = string
  default = "" # example "true
  }

variable "local_group" {
  type = string
  default = "" # example "xxxxx"
  }

variable "local_name" {
  type = string
  default = "" # example "xxxxx"
  }

variable "local_scale_group_id" {
  type = string
  default = "" # example null
}

variable "local_segment_id" {
  type = string
  default = "" # example "1234"
}

variable "local_size" {
  type = string
  default = "" # example "SMALL"
}

variable "local_vpn_mode" {
  type = string
  default = "" # example "ROUTE_BASED"
}

variable "local_endpoint_billing_tag_ids" {
  type = string
  default = [""] # example [""]
}

variable "local_endpoint_customer_gateway_ip" {
  type = string
  default = "" # example ""1.1.1.1" 
}

variable "local_endpoint_enable_tunnel_redundancy" {
  type = string
  default = "" # example true
}

variable "local_endpoint_ha_mode" {
  type = string
  default = "" # example "ACTIVE"
}

variable "local_endpoint_name" {
  type = string
  default = "" # example "xxxxx"
}

variable "local_endpoint_preshared_keys" {
  type = string
  default = [""] # example ["xxxxx-xxx-xxx-xxx-xxxxx", "xxxxx-xxx-xxx-xxx-xxxxx"]
}