#!/bin/bash

HOST="8.8.8.8"
PORT=443  # Change to the port you want to check

if nc -zvw3 $HOST $PORT; then
    echo "Connection to $HOST on port $PORT succeeded!"
else
    echo "Connection to $HOST on port $PORT failed."
fi

<<comment
z = zero-I/O mode (just check if port is open)

-v = verbose

-w3 = timeout after 3 seconds
comment
