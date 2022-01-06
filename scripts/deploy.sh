#!/bin/bash

sudo python3 /home/ubuntu/app/app.py >>/home/ubuntu/app/app.log 2>&1 &

echo "App Start."

exit 0