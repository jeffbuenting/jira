# $JiraServer = Read-Host -Prompt "What is the jira server address?"

# $Cred = Get-credential 

Set-JiraConfigServer $JiraServer

$Issues = Get-JiraIssue -Query "comment ~ 'svc*'" -Credential $Cred

