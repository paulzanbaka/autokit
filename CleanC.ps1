# ****************************************************************************************
#
# Script Name: Clean C drive.ps1
# Version: 1.0
# Author: Paul Zanbaka
# Date: 02/05/2019

# 
# Description: This script will Clean C Rempotely on any Server
# 

# ****************************************************************************************

if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
   Write-Host -ForegroundColor Red "You did not run this script as Administrator"
    Write-Host -ForegroundColor Red "Please Run This script as Administrator"

}

""
$ServerName = Read-Host -Prompt "Enter Server Name "



#foreach ($ServerName in get-content C:\logfiles\drives.txt) {


Write-Host "Started C drive Cleanup on $ServerName " -BackgroundColor Green -ForegroundColor White
Get-Date  



<#

Remove-Item \\$ServerName\C$\temp\*  -Force –Recurse 
Remove-Item \\$ServerName\C$\Windows\Logs\*  -Force –Recurse
Remove-Item \\$ServerName\C$\Windows\temp\*  -Force –Recurse
Remove-Item "\\$ServerName\C$\Windows\Downloaded Program Files\*" -Force  –Recurse
Remove-Item   \\$ServerName\C$\windows\uninstalled\* -Force –Recurse  
Remove-Item \\$ServerName\C$\ProgramData\Microsoft\Windows\WER\* -Force –Recurse 
#>


$Session = New-PSSession -ComputerName $ServerName  


 Invoke-Command -Session $Session -Argumentlist $ServerName  -ScriptBlock {


 # Get-WmiObject Win32_Service

$disk = Get-WmiObject Win32_LogicalDisk  -Filter "DeviceID='C:'" | Select-Object Size,FreeSpace




Remove-Item C:\temp\*  -Force –Recurse 
Remove-Item C:\Windows\Logs\*  -Force –Recurse
Remove-Item C:\Windows\temp\*  -Force –Recurse
Remove-Item "C:\Windows\Downloaded Program Files\*" -Force  –Recurse
Remove-Item   C:\windows\uninstalled\* -Force –Recurse  
Remove-Item C:\ProgramData\Microsoft\Windows\WER\* -Force –Recurse 


"Recalculating Disk Space"
 # Get-WmiObject Win32_Service


"Disk Size GB"
 (($disk.Size/1024)/1024)/1024
"Free Space GB:" 
(($disk.FreeSpace/1024)/1024)/1024  
$percentage =($disk.FreeSpace/$disk.Size)*100 
"Percentage Free: "
"$percentage %"


""

$disk2 = Get-WmiObject Win32_LogicalDisk -Filter "DeviceID='C:'" | Select-Object Size,FreeSpace
"Disk Size GB"
 (($disk2.Size/1024)/1024)/1024
"Free Space GB:" 
(($disk2.FreeSpace/1024)/1024)/1024  
$percentage2 =($disk2.FreeSpace/$disk.Size)*100 
"Percentage Free: "
"$percentag2e %"

""
Write-Host  "Script Ended"

}




<#
del C:\WINDOWS\Temp /S /F /Q
del C:\WINDOWS\system32\LogFiles  /S /F /Q
del C:\Temp /S /F /Q
del C:\WINDOWS\Logs /S /F /Q
del "C:\WINDOWS\Offline Web Pages" /S /F /Q
del C:\temp\*  /S /F /Q
del C:\Windows\Logs\*  /S /F /Q
del C:\Windows\temp\* /S /F /Q
del "C:\Windows\Downloaded Program Files\*" /S /F /Q
del  C:\windows\uninstalled\* /S /F /Q 
del C:\ProgramData\Microsoft\Windows\WER\* /S /F /Q
#>
 
 
sleep 5
Set-Location "C:\scripts\PowerShell-Utilities"
.\Menu.ps1 

     
