$paramuname=$args[0]
$parampwd=$args[1]
$User = $paramuname
$PWord = ConvertTo-SecureString -String $parampwd -AsPlainText -Force
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, $PWord
$body = "Hello world"
Send-MailMessage -To “pranesh.s@horizontal.com” -From “noreply@horizontal.com”  -Subject "Hello world" -Body $body -BodyAsHtml -Credential $Credential -SmtpServer “smtp-relay.sendinblue.com” -Port 587
