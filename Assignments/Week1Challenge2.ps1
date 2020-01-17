# David Serate 
# SYS-320
# Week 1 Challenge 2 
# Challenge: Review Security Event Logs

# List all available Event Logs 
Get-EventLog -list 

# Create user selection prompt - allows for choice of event log
$logselection = Read-Host -Prompt "Please select a log to review from the list above." 

# Create prompt to let user pick a search string
$searchstring = Read-Host -Prompt "Please enter a string to filter for in the logs." 

# Define directory 
$mydir ="C:\Users\david.serate\Desktop"

# Select chosen event log
Get-EventLog -LogName $logselection -Newest 40 | `
where {$_.Message -ilike "*$searchstring*"} | `
Export-Csv -NoTypeInformation -Path "$mydir\MyEventLogs.csv"