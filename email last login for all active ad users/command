Files = Get-ADComputer -Filter 'OperatingSystem -like "*"' | Select-Object Name | Sort-Object Name | ForEach-Object { if (Test-Connection -ComputerName $_.Name -count 1 -quiet){(Get-HotFix -ComputerName $_.Name | sort installedon)[-1]} else { Write-Output $_.Name "is offline."}}
$Body = Format-Table -InputObject $Files    | Out-String
$Subject = "Active Users Last Logins"
Write-Host $Body

$EmailUser = "email@email.com"
$EmailPass = 'password'
$EmailFrom = "email@email.com"
$EmailTo = "email@email.com"
$SMTPServer = "smtp.gmail.com"
$SMTPPort = ###
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, $SMTPPort) 
$SMTPClient.EnableSsl = $true 
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential($EmailUser, $EmailPass); 
$SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)