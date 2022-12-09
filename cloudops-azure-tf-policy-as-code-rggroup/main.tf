terraform {
  #backend "remote" {}
  required_version = ">= 0.13"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "> 2.0"
    }
  }
} 

provider "azurerm" {
    subscription_id = "19a7ed62-f51f-4e53-b3ea-6ba9a63f17fe"
  features {}
}

module "policyset_definitions" {
  source = "./modules/policyset-definitions"
}



module "policy_assignments" {
  source = "./modules/policy-assignments"
   rggroup = var.rggroup
   location = var.location

   guest_configuration_policyset_id        = module.policyset_definitions.guest_configuration_policyset_id
}



