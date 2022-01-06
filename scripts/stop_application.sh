#!/bin/bash
sudo rm -rf /home/ubuntu/app/requirements.txt

PID=$(ps -ef | grep "/app/app.py" | grep -v grep | awk '{ print $2 }' | xargs echo )

echo "Killing PID: '$PID'"
kill $PID

sleep 2
echo "Server stopped."

exit 0