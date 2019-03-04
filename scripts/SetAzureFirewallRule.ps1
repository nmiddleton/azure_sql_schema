[CmdletBinding(DefaultParameterSetName = 'None')]
param
(
    [String] [Parameter(Mandatory = $true)] $ServerName,
    [String] [Parameter(Mandatory = $true)] $ResourceGroupName,
    [String] $AzureFirewallName = "AzureWebAppFirewall"
)

$ErrorActionPreference = 'Stop'

function New-AzureSQLServerFirewallRule {
    $agentIP = (New-Object net.webclient).downloadstring("http://checkip.dyndns.com") -replace "[^\d\.]"
    New-AzureRmSqlServerFirewallRule -StartIPAddress $agentIp -EndIPAddress $agentIp -FirewallRuleName $AzureFirewallName -ServerName $ServerName -ResourceGroupName $ResourceGroupName
}
function Update-AzureSQLServerFirewallRule{
    $agentIP= (New-Object net.webclient).downloadstring("http://checkip.dyndns.com") -replace "[^\d\.]"
    Set-AzureRmSqlServerFirewallRule -StartIPAddress $agentIp -EndIPAddress $agentIp -FirewallRuleName $AzureFirewallName -ServerName $ServerName -ResourceGroupName $ResourceGroupName
}

If ((Get-AzureRmSqlServerFirewallRule -ServerName $ServerName -FirewallRuleName $AzureFirewallName -ResourceGroupName $ResourceGroupName-ErrorAction SilentlyContinue) -eq $null)
{
    New-AzureSQLServerFirewallRule
}
else
{
    Update-AzureSQLServerFirewallRule
}
