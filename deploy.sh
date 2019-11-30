#!/bin/bash
# test
id=$(ps -ef|grep sample.jar|grep -v grep|awk '{print $2}')
if [ ! $id ]; then echo "process not started"; else kill -9 $id;fi
sleep 2s;
nohup java -jar /opt/ansible/sample.jar  > /tmp/nohup.out 2>&1 &
