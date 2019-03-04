[CmdletBinding(DefaultParameterSetName = 'None')]
param
(
  [String] [Parameter(Mandatory = $true)] $ServerName,
  [String] $AzureFirewallName = "AzureWebAppFirewall"
)

$ErrorActionPreference = 'Stop'

If ((Get-AzureSqlDatabaseServerFirewallRule -ResourceGroupName 'IaC_Sandbox' -ServerName $ServerName -RuleName $AzureFirewallName -ErrorAction SilentlyContinue))
{
  Remove-AzureSqlDatabaseServerFirewallRule -ResourceGroupName 'IaC_Sandbox' -RuleName $AzureFirewallName -ServerName $ServerName
}
