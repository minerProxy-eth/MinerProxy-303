#!/bin/sh
chmod +x minerProxy_web
while true

do

ps -aux | grep minerProxy_web | grep -v "grep"

if [ "$?" -eq 1 ]

then

nohup ./minerProxy_web & #启动应用，修改成自己的启动应用脚本或命令

echo "process has been restarted!"

else

echo "process already started!"

fi

sleep 10

done
