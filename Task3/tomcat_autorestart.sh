#!/bin/sh

TOMCAT_SERVICE='tomcat7'
TOMCAT_PID_FILE='/var/run/tomcat7.pid'

if [ -f $TOMCAT_PID_FILE ]; then

    PID=`cat $TOMCAT_PID_FILE`

    ps --pid $PID >> /dev/null

    if [ $? -ne 0 ]; then
        echo "Process not found, need to start"
        rm  -f $TOMCAT_PID_FILE
        service $TOMCAT_SERVICE start
    fi
fi
