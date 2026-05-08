#!/bin/bash

read -p "enter CPU usage percentage:" a

if [ $a -le 30 ]
then
echo "status:IDLE - log the event"
elif [ $a -le 70 ]
then
echo "status:NORMAL - no action needed"
elif [ $a -le 90 ]
then
echo "status:WARNING - send an alert to the admin"
elif [ $a -le 100 ]
then
echo "status:CRITICAL - trigger an automated process kill"
else
echo "ERROR-Invalid input"
fi
