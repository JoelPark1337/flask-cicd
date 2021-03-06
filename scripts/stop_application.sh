#!/bin/bash

PID=$(ps -ef | grep "app.py" | grep -v grep | awk '{ print $2 }' | xargs echo )

echo "Killing PID: '$PID'"
sudo kill $PID

sleep 2
echo "Server stopped."

sudo rm -rf /home/ubuntu/*

exit 0