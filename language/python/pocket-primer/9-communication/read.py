# This program demonstrates how to read email headers using Python

import imaplib

server = 'imap.gmail.com'

# Place your email here and make sure to mask the password
USER = 'pythontextbook@gmail.com'
PASSWORD = 'python4all'

# Select the email folder to open
FOLDER = 'Inbox'

# Connect to the server
mailbox = imaplib.IMAP4_SSL(server)

# Authentication
mailbox.login(USER, PASSWORD)

# Select the emailbox to read from
envelope, data = mailbox.select(FOLDER)

# IMAP search criterion
#
# ALL                           All messages
# ANSWERED                      Messages that have been answered
# BCC <string>                  Messages with a specific string in the BCC field
# BEFORE <date>                 Messages whose date (not time) is earlier than the specified one
# HEADER <field-name> string>   A specified field in the header contains the string
# SUBJECT <string>              Messages that contain the specified string in the SUBJECT field
# TO <string>                   Messages that contain the specified string in the TO field
# UNSEEN                        Messages that do not have \Seen flag set

# Specifier on which data to extract from the email
#
# RFC822        Everything
# RFC822.HEADER No body, header only
# RFC822.TEXT   Body only
# RFC822.SIZE   Message size
# UID           Message identifier

# Check the response, proceed only if it's a success
if envelope == 'OK':
    print('Subject Headers: ', FOLDER)
    envelope, data = mailbox.search(None, 'ALL')

    if envelope != 'OK':
        print('No messages available.', envelope)
        exit()

    # Go through all the emails and display their headers
    for number in data[0].split():
        # b'1 2 3
        envelope, data = mailbox.fetch(number, '(RFC822.HEADER)')

        if envelope != 'OK':
            print('Error fetching header ', number, envelope)
            break
        subject = str(data[0][1])

        # Look for the string 'Subject' in the header
        k = subject.find('Subject')

        # If it's present, extract the
        # string to the next '\r'
        if k >= 0:
            subject = subject[k:]

        k = subject.find('\\r')
        subject = subject[:k]

        print(subject)
else:
    print('No mailbox for ', FOLDER)

mailbox.logout()
