# This program sends a number to the sever (square_server.py) and
# receives the squared value of that number

# The client will begin the conversation. It creates a connection,
# a socket, to the server using the socket() function of the
# socket module. Protocols must be specified, and the most
# common ones will be used.

import socket

# The IPv4 address of the server
HOST = '127.0.0.1'

# Use the same port with the server
PORT = 50007

# AF_INET and SOCK_STREAM are constants that tells
# the system which protocols are being used
connection = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# Connect using the address and port number
connection.connect((HOST, PORT))

# Send a message as bytes
connection.send(b'Hi there!')

# Await a response from the server with a
# limit of 1024 bytes
data = connection.recv(1024)

for i in range(0, 100):
    # Send all numbers from 0 to 99 to the server
    data = str(i).encode()
    connection.send(data)

    # Receive the response from the server and display it
    data = connection.recv(1024)
    print('Index ', i, ' : ', data)

connection.close()
