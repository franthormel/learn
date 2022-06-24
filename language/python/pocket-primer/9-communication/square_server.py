# This program receives a number from the client (square_client.py) and
# sends the squared value of that number

# The server is always listening. It creates a socket on a particular
# port so that the operation system know something is possible there,
# but because the server cannot predict when a client will connect
# or what client it will be, it simply listens for a connection,
# by calling a function named listen()

import socket

# If HOST is blank this computer will be used as the server
HOST = '127.0.0.1'

# Use the same port with the client
PORT = 50007

# AF_INET and SOCK_STREAM are constants that tells
# the system which protocols are being used
connection = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

connection.bind((HOST, PORT))

# Listen for a message from the connection
connection.listen()

# When a message is intercepted, accept it
link, address = connection.accept()

# Receive the message from the connection
# with 1024-bytes as the limit
data = link.recv(1024)

print('Server header ', data, ' from ', address)

link.send(b'Hello. Nice to meet you!')

while True:
    # Read the incoming data as integers
    data = link.recv(1024)

    if data:
        number = int(data)
        print('Received ', number)

        #Square the number and send it back to the client as bytes
        data = str(number * number).encode()
        link.send(data)

    connection.close()
