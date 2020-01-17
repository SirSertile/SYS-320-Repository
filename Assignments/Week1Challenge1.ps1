# David Serate 
# SYS-320
# Week 1 Challenge 1 
# Challenge: Send an email

# Creating a Variable
$message = "Hello there."

# Prints to screen
write-host $message -ForegroundColor DarkBlue -BackgroundColor Magenta

# Defining sending email
$fromemail = "david.serate@mymail.champlain.edu"

# Defining target email
$toemail = "deployer@csi-web"
# $toemail = "david.serate@mymail.champlain.edu"

# Sending the email
Send-MailMessage -From $fromemail -To $toemail -Subject "Super Secret Message" -Body $message -SmtpServer 192.168.4.22