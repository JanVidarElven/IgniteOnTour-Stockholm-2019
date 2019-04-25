# Instructions for Installing and Using the Microsoft Graph Security PowerShell Module

## App Registration in Azure AD

Do the following steps for creating an App Registration for using the Graph Security PowerShell Module:

1. In the Azure Portal, go to Azure Active Directory and select App Registrations (Preview).
1. Select "+ New Registration" and type in a name, eg. "Microsoft Graph Security PowerShell". Click Register. Copy the AppId for later.
1. Under Authentication, click to select "urn:ietf:wg:oauth:2.0:oob" under Suggested Redirect Uris.
1. Select Implicit grant issued by the authorization endpoint: "Access Tokens"
1. Under API Permissions: Add Microsoft Graph Delegated Permissions SecurityEvents.Read.All and/or SecurityEvents.ReadWrite.All.
1. Grant Admin Consent.

## Install Graph Security PowerShell Module

To Install the Microsoft Graph Security PowerShell Module:

`Install-Module MicrosoftGraphSecurity`

## Get Security Alerts

`Get-GraphSecurityAlert` (Specify your Admin UPN and the AppId as the Password)

`Get-GraphSecurityAlert -top 1`

`Get-GraphSecurityAlert -userPrincipalName <enter the value> -severity medium -Verbose | select title, status, description, assignedTo, severity, userStates`

## Set Security Alerts

`Set-GraphSecurityAlert -id <enter the value>`

## Get Graph Security Score

`Get-GraphSecuritySecureScore`