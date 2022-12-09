 
data "azurerm_policy_definition" "builtin_policies_guest_configuration" {
  count        = length(var.builtin_policies_guest_configuration)
  display_name = var.builtin_policies_guest_configuration[count.index]
}

variable "policyset_definition_category" {
  type        = string
  description = "The category to use for all PolicySet defintions"
  default     = "Custom"
}


variable "builtin_policies_guest_configuration" {
  type        = list(any)
  description = "List of policy definitions (display names) for the guest_configuration policyset"
  default = [
       #Guest Configuration 
"Add system-assigned managed identity to enable Guest Configuration assignments on virtual machines with no identities",
"Add system-assigned managed identity to enable Guest Configuration assignments on VMs with a user-assigned identity",
"Deploy the Windows Guest Configuration extension to enable Guest Configuration assignments on Windows VMs",
"Deploy the Linux Guest Configuration extension to enable Guest Configuration assignments on Linux VMs",
"[Preview]: Add user-assigned managed identity to enable Guest Configuration assignments on virtual machines",
"Windows machines should meet requirements for 'Administrative Templates - Control Panel'",
"Windows machines should meet requirements for 'Administrative Templates - Network'",
"Windows machines should meet requirements for 'Administrative Templates - System'",
"Windows machines should meet requirements for 'Administrative Templates - MSS (Legacy)'",
"Windows machines should meet requirements for 'Security Options - Accounts'",
"Windows machines should meet requirements for 'Security Options - Audit'",
"Windows machines should meet requirements for 'Security Options - Devices'",
"Windows machines should meet requirements for 'Security Options - Interactive Logon'",
"Windows machines should meet requirements for 'Security Options - Microsoft Network Client'",
"Windows machines should meet requirements for 'Security Options - Microsoft Network Server'",
"Windows machines should meet requirements for 'Security Options - Network Access'",
"Windows machines should meet requirements for 'Security Options - Network Security'",
"Windows machines should meet requirements for 'Security Options - Recovery console'",
"Windows machines should meet requirements for 'Security Options - Shutdown'",
"Windows machines should meet requirements for 'Security Options - System objects'",
"Windows machines should meet requirements for 'Security Options - System settings'",
"Windows machines should meet requirements for 'Security Options - User Account Control'",
"Windows machines should meet requirements for 'Security Settings - Account Policies'",
"Windows machines should meet requirements for 'System Audit Policies - Account Logon'",
"Windows machines should meet requirements for 'System Audit Policies - Account Management'",
"Windows machines should meet requirements for 'System Audit Policies - Detailed Tracking'",
"Windows machines should meet requirements for 'System Audit Policies - Logon-Logoff'",
"Windows machines should meet requirements for 'System Audit Policies - Object Access'",
"Windows machines should meet requirements for 'System Audit Policies - Policy Change'",
"Windows machines should meet requirements for 'System Audit Policies - Privilege Use'",
"Windows machines should meet requirements for 'System Audit Policies - System'",
"Windows machines should meet requirements for 'User Rights Assignment'",
"Windows machines should meet requirements for 'Windows Components'",
"Windows machines should meet requirements for 'Windows Firewall Properties'",
"Audit Windows machines that do not have a maximum password age of 70 days",
"Audit Windows machines that do not have a minimum password age of 1 day",
"Audit Windows machines that do not have the password complexity setting enabled",
"Audit Windows machines that do not store passwords using reversible encryption",
"Audit Windows machines that allow re-use of the previous 24 passwords",
"Audit Windows machines that do not restrict the minimum password length to 14 characters",
"Audit Linux machines that allow remote connections from accounts without passwords",
"Audit Linux machines that do not have the passwd file permissions set to 0644",
"Audit Linux machines that have accounts without passwords",
"Log Analytics agent should be installed on your virtual machine for Azure Security Center monitoring",
"Auto provisioning of the Log Analytics agent should be enabled on your subscription",
"Linux machines should have Log Analytics agent installed on Azure Arc",
"Windows machines should have Log Analytics agent installed on Azure Arc",
"[Preview]: Log Analytics extension should be installed on your Linux Azure Arc machines",
"Configure Linux Arc-enabled machines to run Azure Monitor Agent",
"[Preview]: Configure Azure Arc-enabled Linux machines with Log Analytics agents connected to default Log Analytics workspace",
"[Preview]: Configure Azure Arc-enabled Windows machines with Log Analytics agents connected to default Log Analytics workspace",
  ]
}

