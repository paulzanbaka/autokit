<#
.SYNOPSIS
Restart All Started App Pools

.DESCRIPTION
Restart All App Pools in IIS
# to test run below



 .EXAMPLE
   PS > .\Restart_App_Pool.ps1 
  
.NOTES
    Author: Paul Zanbaka
    Last Edit: 2016-2-7
    Version 1.0 - initial release 



#>
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
   Write-Host -ForegroundColor Red "You did not run this script as Administrator"
    Write-Host -ForegroundColor Red "Please Run This script as Administrator"
    sleep 10
    "Exiting in 10 seconds"
    exit

}

else { 



""
$ServerName = Read-Host -Prompt "Enter Server Name "



# validate inputs

$Session = New-PSSession -ComputerName $ServerName  


 Invoke-Command -Session $Session -Argumentlist $ServerName  -ScriptBlock {
"Restart All Started App Pools"


Import-Module WebAdministration


foreach ($item in ( ls IIS:\AppPools ) ){   
 if( $item.state -eq "Started")    {
 
 Restart-WebAppPool -Name $item.Name       
  Write-Host ($item.Name + "  was re-started.")   
   }
} 

}
}
