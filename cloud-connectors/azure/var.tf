# Variables

variable "local_azure_vnet_id" {
  type = string
  default = "" # example "/subscriptions/xxxxx/xxxxx/xxxxx/providers/Microsoft.Network/virtualNetworks/xxxxx" 
}
  
variable "local_billing_tag_ids" {
  type = string
  default = [""] # example "12345"
}

variable "local_credential_id" {
  type = string
  default = [""] # example "xxxxx-xxx-xxx-xxx-xxxxx"
}

variable "local_customer_asn" {
  type = string
  default = [""] # example "64321"
}

variable "local_cxp" {
  type = string
  default = "" # example "US-WEST-1"
}

variable "local_group" {
  type = string
  default = "" # example "xxxxx"
}

variable "local_name" {
  type = string
  default = "" # example "xxxxx"
}

variable "local_segment_id" {
  type = string
  default = "" # example "1234"
}

variable "local_size" {
  type = string
  default = "" # example "SMALL"
}
