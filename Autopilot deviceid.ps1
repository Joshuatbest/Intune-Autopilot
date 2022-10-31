#get the script 
Install-script -Name -Get-WindowsAutopilotInfo
#Yes
#Install nuget Yes
#Allow powershell gallery Yes

# Get the device id 
Get-WindowsAutoPilotInfo.ps1 -outputfile c:\deviceid.csv
#Execution policy is set to block scripts that cant be exectued by default as a security percaution. 
Get-ExecutionPolicy 
Set-ExectuionPolicy Unrestricted 

Get-WindowsAutoPilotinto.ps1 -outputfile c:\deviceid.csv 
<#
Then when you havigate to the file the 26 digit key separated by dashes is the device id the rest is the hash to ensure it isnt tampered with. 

You can then import the file to enroll devices tab of endpoint.microsoft.com so you can add the device to intunte. 
#>