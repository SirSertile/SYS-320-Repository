# David Serate SYS-320
# List running processes
# Get-Process | Get-Member 
# pulling process info 
# Get-Process | Select-Object ProcessName, ID, Path
# pull process info via aliases
#ps | Select ProcessName, ID, Path | export-csv -NoTypeInformation `
#-Path "C:\Users\david.serate\Desktop\processes.csv"
# List all registered services
#Get-Service | where {$_.Status -eq "Running"}
# List all Running Chrome Processes
Get-Process | where {$_.ProcessName -eq "Chrome"}