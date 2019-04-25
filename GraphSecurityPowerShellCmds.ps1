# https://techcommunity.microsoft.com/t5/Security-Privacy-and-Compliance/IT-Pros-can-now-easily-connect-to-Microsoft-Graph-Security-with/ba-p/399308

# Install Module (Elevated Admin)
Install-Module MicrosoftGraphSecurity

# Get Security Alerts
Get-GraphSecurityAlert # (Specify your Admin UPN and the AppId as the Password)

Get-GraphSecurityAlert -top 1

Get-GraphSecurityAlert -userPrincipalName jan.vidar@elven.no -severity medium -Verbose | Select-Object title, status, description, assignedTo, severity, userStates

# Set Security Alert
Set-GraphSecurityAlert -id '<enter the value>'

# Get Graph Security Score
Get-GraphSecuritySecureScore

