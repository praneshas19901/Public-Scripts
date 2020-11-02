$User = "pranesh.s@horizontal.com"
$PWord = ConvertTo-SecureString -String "nBZwJ4MCLjS3RIsa" -AsPlainText -Force
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, $PWord
$body = "Hello world"
Send-MailMessage -To “pranesh.s@horizontal.com” -From “noreply@horizontal.com”  -Subject "Hello world" -Body $body -BodyAsHtml -Credential $Credential -SmtpServer “smtp-relay.sendinblue.com” -Port 587