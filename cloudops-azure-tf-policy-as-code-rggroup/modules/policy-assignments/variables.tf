data "azurerm_subscription" "current" {
}
variable "guest_configuration_policyset_id" {
  type        = string
  description = "The policy set definition id for guest_configuration"
}

 variable "rggroup" {} 
 variable "location" {} 