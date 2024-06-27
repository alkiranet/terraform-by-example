provider "alkira" {
  portal    = var.alk_portal
  username  = var.alk_username
  password  = var.alk_password
}

provider "azurerm" {
  features {}

  client_id        = var.azr_client_id
  client_secret    = var.azr_client_secret
  subscription_id  = var.azr_subscription_id
  tenant_id        = var.azr_tenant_id

}