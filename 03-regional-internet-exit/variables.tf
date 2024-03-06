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

variable "pan_username" {
  type        = string
  sensitive   = true
}

variable "pan_password" {
  type        = string
  sensitive   = true
}

variable "registration_pin_id" {
  type        = string
  sensitive   = true
}

variable "registration_pin_value" {
  type        = string
  sensitive   = true
}

variable "registration_pin_expiry" {
  type        = string
  sensitive   = true
}