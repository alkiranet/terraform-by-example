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

variable "aws_account_id" {
  type        = string
  sensitive   = true
}

variable "aws_access_key" {
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  type        = string
  sensitive   = true
}

variable "aws_region" {
  type        = string
  default     = "us-east-2"
}