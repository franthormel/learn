# This program demonstrates how to send emails via Python

import smtplib
from email.mime.text import MIMEText

# Place your credentials here
LOGIN = 'pythontextbook@gmail.com'
PASSWORD = ' python4all'

# Configure contents here
message = MIMEText('This is a sample email')
message['Subject'] = '[Python] Sample Email'
message['From'] = 'pythontextbook@gmail.com'
message['To'] = 'pythontextbook@gmail.com'

# Send using Google's SMTP server
send = smtplib.SMTP('smtp.gmail.com')
send.starttls()
send.login(LOGIN, PASSWORD)
send.send_message(message)
send.quit()