#!/bin/sh
chmod +x MinerProxy_web-303
while true

do

ps -aux | grep MinerProxy_web-303 | grep -v "grep"

if [ "$?" -eq 1 ]

then

nohup ./MinerProxy_web-303 & #启动应用，修改成自己的启动应用脚本或命令

echo "process has been restarted!"

else

echo "process already started!"

fi

sleep 10

done
