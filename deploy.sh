#!/bin/bash
id=$(ps -ef|grep sample.jar|grep -v grep|awk '{print $2}')
if [ ! $id ]; then echo "process not started"; else kill -9 $id;fi
sleep 2s;
nohup java -jar /tmp/sample.jar  > nohup.out &