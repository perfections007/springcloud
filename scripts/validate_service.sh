#!/bin/bash

processesNum=`ps aux | grep springcloud-eureka-server-ha-2.0.0-SNAPSHOT.jar  | grep -v grep | wc -l | sed 's/ //g'`
ps aux | grep springcloud-eureka-server-ha-2.0.0-SNAPSHOT.jar  | grep -v grep
echo process number is $processesNum
if [ "$processesNum" == "1" ];then
    echo app deployed successfully!
    exit 0
else 
    echo app deployed failed!
    exit 1
fi
