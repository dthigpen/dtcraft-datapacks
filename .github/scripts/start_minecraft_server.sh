#!/usr/bin/env bash

pushd server
echo "eula=true" > eula.txt
echo "rcon.port=25575" >> server.properties
echo "enable-rcon=true" >> server.properties
echo "rcon.password=${RCON_PWD}" >> server.properties
screen -dmS minecraft java -Xmx2048M -Xms2048M -jar server.jar nogui
popd
echo "Waiting for RCON server to start up"
sleep 10
function wait_for_startup {
tail -f server/logs/latest.log | sed '/.*! For help.*/ q' && echo "Server Started!"
}
export -f wait_for_startup
timeout 180 bash -c wait_for_startup || cat server/logs/latest.log