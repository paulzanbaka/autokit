# ****************************************************************************************
#
# Script Name: Query_Boot_Time.ps1
# Version: 1.0
# Author: Paul Zanbaka
# Date: 02/01/2018

# 
# Description: This script queries a machine for last boot time 
# Run as Administrator
# ****************************************************************************************

if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
   Write-Host -ForegroundColor Red "You did not run this script as Administrator"
    Write-Host -ForegroundColor Red "Please Run This script as Administrator"
    sleep 10
    "Exiting in 10 seconds"
    exit

}

else { 

    Write-Host -ForegroundColor Red

""
$ServerName = Read-Host -Prompt "Enter Server Name "
""


$ServerName =$ServerName.Trim()

""
""
Get-WmiObject -ComputerName $ServerName  -Query "SELECT LastBootUpTime FROM Win32_OperatingSystem" 


}
sleep 4
Set-Location "C:\scripts\PowerShell-Utilities"
.\Menu.ps1 