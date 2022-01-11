#!/bin/bash

echo -n Password:
read -s password

ssh-keygen -R 192.168.1.173

expect -c "spawn ssh root@192.168.1.173 -oStrictHostKeyChecking=no \"pkill http-server; pm2 start http-server\"; expect \"password:\"; send \"$password\r\"; interact"

#sshpass -p $password ssh root@192.168.1.173 -oStrictHostKeyChecking=no "pkill http-server; npm install pm2 -g; pm2 start http-server; echo 'server running'"

echo "Yeah this works fine"
