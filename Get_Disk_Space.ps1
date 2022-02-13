
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
   Write-Host -ForegroundColor Red "You did not run this script as Administrator"
    Write-Host -ForegroundColor Red "Please Run This script as Administrator"

}

else { 

""
$ServerName = Read-Host -Prompt "Enter Server Name "



# validate inputs

$Session = New-PSSession -ComputerName $ServerName  

 Invoke-Command -Session $Session -Argumentlist $ServerName  -ScriptBlock {
 $Drive = Read-Host -Prompt "Enter Drive Letter Only "
$Drive =$Drive.Trim()
$Drive =$Drive +":"

"$Drive"

 # Get-WmiObject Win32_Service

  $disk = Get-WmiObject Win32_LogicalDisk  -Filter "DeviceID='$Drive'" | Select-Object Size,FreeSpace
"Disk Size GB"
 (($disk.Size/1024)/1024)/1024
"Free Space GB:" 
(($disk.FreeSpace/1024)/1024)/1024  
$percentage =($disk.FreeSpace/$disk.Size)*100 
"Percentage Free: "
"$percentage %"



}

# close remote session
  Remove-PSSession -Session $Session
  }
