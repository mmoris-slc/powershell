We have all of our machines in the network backing up to the same drive on a domain server.&nbsp; Because many of our domain machines are laptops, they don't always get their backups completed each week.&nbsp; So we use this to monitor which ones didn't complete, and then we have a guy who goes around and forces the completion of the backups during the next week.


## Configuration Details:</p>
We run this weekly in a scheduled task. At the end of the week.

You must configure pathA and pathB
	We have our backups split by laptops and desktops, so we have 2 path's we're monitoring.
	Just remove the code below if you are only reading 1 directory.&nbsp; Add if needing more.
	,'pathB'


You must configure the email details in the script

	$Subject
	$EmailUser
	$EmailPass
	$EmailFrom
	$EmailTo
	$SMTPServer
	$SMTPPort