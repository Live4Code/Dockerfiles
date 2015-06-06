#!/bin/bash

user=$(echo "$userEnv" | awk -F '---' '{print $1}')
pass=$(echo "$userEnv" | awk -F '---' '{print $2}')

codebox run /var/tmp --port 4000 -u ${user}:${pass} 
