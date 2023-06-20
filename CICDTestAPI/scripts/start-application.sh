# !/bin/bash
# java -jar /home/ubuntu/my-app/my-application.jar

# !/usr/bin/env bash

REPOSITORY=/home/ubuntu/cicdtest
cd $REPOSITORY

APP_NAME=cicd
JAR_NAME=$(ls $REPOSITORY | grep 'SNAPSHOT.jar' | tail -n 1)
JAR_PATH=$REPOSITORY/$JAR_NAME

CURRENT_PID=$(pgrep -f $APP_NAME)

if [ -z $CURRENT_PID ]
then
  echo "> 종료할것 없음."
else
  echo "> kill -9 $CURRENT_PID"
  kill -15 $CURRENT_PID
  sleep 5
fi

echo "> $JAR_PATH 배포"
nohup java -jar $JAR_PATH > /dev/null 2> /dev/null < /dev/null &
