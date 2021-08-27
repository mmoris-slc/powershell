we use this to keep track of domain users. we watch for logins that are getting old, and disable the account. this will email a list of all active (non-disabled) users last login date/time, to the email address defined. you will need an email to send this from also.

time needed: 15 minutes.

configure the following details

## variables
$emailuser = “email@email.com“
$emailpass = ‘password‘
$emailfrom = “email@email.com“
$emailto = “email@email.com“
$smtpserver = “smtp.gmail.com“
$smtpport = ###

## configure a scheduled task to run this script weekly
i like it to show up monday morning.