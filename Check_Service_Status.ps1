# ****************************************************************************************
#
# Script Name: Check_Service_Status.ps1
# Version: 1.0
# Author: Paul Zanbaka
# Date: 01/27/2018

# 
# Description: This script will Check Service Status and State Rempotely on any Server
# 

# ****************************************************************************************

if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
   Write-Host -ForegroundColor Red "You did not run this script as Administrator" -BackgroundColor Yellow
    Write-Host -ForegroundColor Red "Please Run This script as Administrator" -BackgroundColor Yellow

        sleep 5
"existing in 5 seconds"
    exit

}

else { 

""
$ServerName = Read-Host -Prompt "Enter Server Name "
""
$ServiceName = Read-Host -Prompt "Enter Part of Service Name "

$ServerName =$ServerName.Trim()
$ServiceName =$ServiceName.Trim()
""
""

Get-WmiObject Win32_Service -ComputerName $ServerName -Filter "Name LIKE '%$ServiceName%'" | Select Name, State, Status
 
 
 

 }
     

