#!/bin/bash


if [[ -n `ps -aux |grep notebook|grep -v grep |awk '{print $2}'` ]];then
        kill -s 9 `ps -aux |grep notebook|grep -v grep |awk '{print $2}'`
        echo -e "\033[32;5m!!!!!stop notebook successful\033[0m"
fi
