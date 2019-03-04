[CmdletBinding(DefaultParameterSetName = 'None')]
param
(
    [String] [Parameter(Mandatory = $true)] $ServerName,
    [String] $AzureFirewallName = "AzureWebAppFirewall"
)
#Add-AzureRMAccount -ServicePrincipal -Tenant 'f07f8b10-167e-4185-a4ba-27d528351285' -Credential System.Management.Automation.PSCredential -Environment AzureCloud @processScope
#Select-AzureRMSubscription -SubscriptionId 51af872a-b560-413b-bb0f-8a11e0f8ce64 -TenantId 'f07f8b10-167e-4185-a4ba-27d528351285'
#
#Get-AzureRmSubscription –SubscriptionName "KCA2 Azure Test&Dev (S03)"
#Get-AzureRmSubscription –SubscriptionName "KCA2 Azure Test&Dev (S03)" | Select-AzureRmSubscription
$ErrorActionPreference = 'Stop'

function New-AzureSQLServerFirewallRule {
    $agentIP = (New-Object net.webclient).downloadstring("http://checkip.dyndns.com") -replace "[^\d\.]"
    New-AzureSqlDatabaseServerFirewallRule -ResourceGroupName 'IaC_Sandbox' -StartIPAddress $agentIp -EndIPAddress $agentIp -RuleName $AzureFirewallName -ServerName $ServerName
}
function Update-AzureSQLServerFirewallRule{
    $agentIP= (New-Object net.webclient).downloadstring("http://checkip.dyndns.com") -replace "[^\d\.]"
    Set-AzureSqlDatabaseServerFirewallRule -ResourceGroupName 'IaC_Sandbox' -StartIPAddress $agentIp -EndIPAddress $agentIp -RuleName $AzureFirewallName -ServerName $ServerName
}

If ((Get-AzureSqlDatabaseServerFirewallRule -ResourceGroupName 'IaC_Sandbox' -ServerName $ServerName -RuleName $AzureFirewallName -ErrorAction SilentlyContinue) -eq $null)
{
    New-AzureSQLServerFirewallRule
}
else
{
    Update-AzureSQLServerFirewallRule
}
