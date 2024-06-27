variable "alk_portal" {
  type        = string
}

variable "alk_username" {
  type        = string
  sensitive   = true
}

variable "alk_password" {
  type        = string
  sensitive   = true
}

variable "azr_resource_group" {
  type        = string
  sensitive   = true
}

variable "azr_client_id" {
  type        = string
  sensitive   = true
}

variable "azr_client_secret" {
  type        = string
  sensitive   = true
}

variable "azr_subscription_id" {
  type        = string
  sensitive   = true
}

variable "azr_tenant_id" {
  type        = string
  sensitive   = true
}