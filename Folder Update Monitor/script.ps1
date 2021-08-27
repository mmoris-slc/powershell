$files = get-childitem -dir 'patha','pathb' | where{$_.lastwritetime -le (get-date).adddays(-7)}  
$body = format-table -inputobject $files    | out-string
$subject = "subject"
write-host $body
$emailuser = "sender@email.com"
$emailpass = 'password'
$emailfrom = "sender@email.com"
$emailto = "recipient1@email.com, recipient2@email.com, recipient3@email.com"
$smtpserver = "server.email.com"
$smtpport = 587
$smtpclient = new-object net.mail.smtpclient($smtpserver, $smtpport) 
$smtpclient.enablessl = $true 
$smtpclient.credentials = new-object system.net.networkcredential($emailuser, $emailpass); 
$smtpclient.send($emailfrom, $emailto, $subject, $body)