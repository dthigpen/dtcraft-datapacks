#!/usr/bin/env bash

# Enters the command in the minecraft screen context
function send_command {
    local cmd="${1}"
    sleep 1
    echo "Sending command to screen: '$cmd'"
    screen -S minecraft -L -p 0 -X stuff "`printf "$cmd\r"`"
}

LOG_COUNT=0
LOGS=screenlog.0

function READ_LOG() {
    LOG_COUNT_NEW=$(wc -l $LOGS | awk '{ print $1 }')
    tail -n $(( $LOG_COUNT_NEW - $LOG_COUNT )) $LOGS
    LOG_COUNT=$LOG_COUNT_NEW
}

pushd server

ls
echo "Start server in a screen instance"
# try to start server once to create eula.txt
# java -Xmx2048M -Xms2048M -jar server.jar nogui
# sed -i "s/false/true/g" eula.txt
echo "eula=true" > eula.txt

screen -S minecraft -d -m -L
send_command "java -Xmx2048M -Xms2048M -jar server.jar nogui"
# sleep 5
# tail -f logs/latest.log | sed '/Time elapsed/ q'
# sleep 5
echo "Waiting 180s for server startup"
sleep 180
READ_LOG
echo "Copying test-artifact datapacks to world"
cp -r ../test-artifacts/* world/datapacks
ls world/datapacks
send_command "/reload"
sleep 10
READ_LOG
echo "Running test functions"
for line in $(cat tests.txt); do
    send_command "/function $line"
    sleep 5
    READ_LOG
done
# filter failures
grep -B 1 'Test suite failed' screenlog.0 | grep -oP '/function \K.*' > failed.txt
send_command "stop"
sleep 15
echo "Exiting"
READ_LOG
send_command "exit"
popd