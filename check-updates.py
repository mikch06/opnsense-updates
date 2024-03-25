import smtplib, ssl
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
import conf.config as c
import subprocess

updates = subprocess.run("/usr/local/opnsense/scripts/firmware/check.sh", shell=True, capture_output=True, text=True)
updates = updates.stdout

isupdate = "Your packages are up to date."

check = subprocess.Popen(['grep', isupdate, '/tmp/pkg_update.out'])

if check == c.isupdate:
    print("Packages are up to date")
    exit

else:
    print("New packages are available") 

    message = MIMEMultipart("alternative")
    message["Subject"] = c.subject
    message["From"] = c.sender_email
    message["To"] = c.receiver_email

    # Turn these into plain/html MIMEText objects
    part1 = MIMEText(updates, "plain")

    # Add HTML/plain-text parts to MIMEMultipart message
    # The email client will try to render the last part first
    message.attach(part1)

    # Create secure connection with server and send email
    context = ssl.create_default_context()
    with smtplib.SMTP_SSL("mail.cyon.ch", 465, context=context) as server:
        server.login(c.smtp_user, c.smtp_password)
        server.sendmail(
            c.sender_email, c.receiver_email, message.as_string()
        )
