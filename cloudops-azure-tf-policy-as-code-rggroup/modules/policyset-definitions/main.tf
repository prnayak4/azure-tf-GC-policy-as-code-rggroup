resource "azurerm_policy_set_definition" "guest_configuration" {

  name         = "guest_configuration"
  policy_type  = "Custom"
  display_name = "Guest Configuration"
  description  = "Contains common Guest Configuration policies"

  metadata = jsonencode(
    {
      "category" : "${var.policyset_definition_category}"
    }

  )

  dynamic "policy_definition_reference" {
    for_each = data.azurerm_policy_definition.builtin_policies_guest_configuration
    content {
      policy_definition_id = policy_definition_reference.value["id"]
      reference_id         = policy_definition_reference.value["display_name"]
    }
  }
}
