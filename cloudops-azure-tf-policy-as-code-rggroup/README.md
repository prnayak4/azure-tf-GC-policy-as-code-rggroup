## Introduction     
Kyndryl Offering Story  "354533 AZR - Implement policy definitions as code with GitHub and integrate it with ADO pipeline . This is for specific Resource Group and Specific Location "
## Description 
An Azure Policy as Code workflow makes it possible to manage your policy definitions and assignments as code. Under this approach teams write out custom policies using json and it can apply to subscriptions as initiatives which can automate  and validate the compliance results .
 Policy as Code  make  it possible to manage policy definitions and assignments as code, control the lifecycle of updating those definitions, and automate the validating of compliance resultsanagement is a configuration component of Automation Linux virtual machines in azure and  send assessment information about missing updates to the Log Analytics workspace. This module is optimized to work for update management scheduing  in Linux  environment which set some terraform variables in the environment needed by this module.


## Usage
1:- 
 module "policy_assignments" {
  source = "./modules/policy-assignments"
   rggroup = var.rggroup 
   location = var.location 
   
   guest_configuration_policyset_id        = module.policyset_definitions.guest_configuration_policyset_id
   
}
 



resource "azurerm_subscription_policy_assignment" "guest_configuration" {
  name                 = "guest_configuration"
  subscription_id      = data.azurerm_resource_group.rggroup.id
  policy_definition_id = var.guest_configuration_policyset_id
  description          = "Assignment of the Guest Configuration initiative to subscription."
  display_name         = "Guest Configuration"
  location             = "eastus2"
  identity { type = "SystemAssigned" }
}


## Prerequisites 
Resourcegoup Name 
Location  
<!-- BEGIN_TF_DOCS -->
 
## Terraform parent module files

* `main.tf`
* `outputs.tf`
* `variables.tf`

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |
| <a name="provider_null"></a> [null](#provider\_null) | n/a |
| <a Subscription_id="subscription_id"></a>  [null](#subscription_id\_null) | n/a |


## Modules
module "policyset_definitions" {
  source = "./modules/policyset-definitions"
}

module "policy_assignments" {
  source = "./modules/policy-assignments"

  guest_configuration_policyset_id        = module.policyset_definitions.guest_configuration_policyset_id
 }




## Resources

| Name | Type |
|------|------|
| [azurerm_resources](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resources) | data source |

## Terraform input variables (variables.tf)

* Usable if you have setup an Azure service principal for authentication as per example usage instructions below.


| Name               | Description                           | Type     | Default Value
|:-------------------|:--------------------------------------|:---------|:--------------
| `subscription_id`    | Your Azure Subscription ID              | `string` | null
| `ResourceGroupName`  | Your Azure Resourcegroupname            | `string` | No . Please  use your resource group name  where you want to deploy   
| `Location `    | Your Azure Location Name                      | `string` |   No . Please  use your Location  name  where you want to deploy  


## Terraform output variables (outputs.tf)

| Name           | Description        | Value
|:---------------|:-------------------|:----------
| `Guest_Configuration_assignment_id `        | The policy assignment id for Guest_Configuration            | module.policy_assignments.guest_configuration_assignment_id
| `Guest_Configuration_assignment_identity`   | The policy assignment identity for Guest_Configuration      | module.policy_assignments.guest_configuration_assignment_identity

## Support

US Cloud Practice Team - Mission to provide cloud native solutions .   Using technologies   Terraform for this module 
For issues, raise a ticket

##Author Information

pramod.kumar.nayak@kyndryl.com

##Deployment

This module works with terraform  
1- terraform init
2- terraform plan
3-terraform apply --auto-approve command 

## Related documentation
 
 Terraform link https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_set_definition
 Microsoft  link https://learn.microsoft.com/en-us/azure/governance/policy/concepts/policy-as-code
 Microsoft  documentation Policy as Code :  ( https://learn.microsoft.com/en-us/azure/governance/policy/tutorials/policy-as-code-github)