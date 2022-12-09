
output "guest_configuration_assignment_id" {
  value       = azurerm_resource_group_policy_assignment.guest_configuration.id
  description = "The policy assignment id for guest_configuration"
}

output "guest_configuration_assignment_identity" {
  value       = azurerm_resource_group_policy_assignment.guest_configuration.identity
  description = "The policy assignment identity for guest_configuration"
}

