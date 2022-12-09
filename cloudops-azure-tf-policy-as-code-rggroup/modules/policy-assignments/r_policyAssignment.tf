resource "azurerm_resource_group_policy_assignment" "guest_configuration" {
  name                 = "guest_configuration"
  resource_group_id    = data.azurerm_resource_group.rggroup.id
  #subscription_id      = data.azurerm_subscription.current.id This is for Subscription
  policy_definition_id = var.guest_configuration_policyset_id
  description          = "Assignment of the Guest Configuration initiative to subscription."
  display_name         = "Guest Configuration"
  location             = var.location
  identity { type = "SystemAssigned" }
}