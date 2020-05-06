#!/bin/bash


if [ -z `netstat -ant|grep 0.0.0.0:8888 |awk '{print $4}'` ];then
    nohup jupyter notebook /home/linlan/gitcode/ML &>nohub.out&
    echo -e "\033[32;5m [`date "+%Y-%m-%d %H:%M:%S"`] start notebook successful\033[0m"
else
    echo -e "\033[31mnotebook already run,exit\033[0m"
fi

