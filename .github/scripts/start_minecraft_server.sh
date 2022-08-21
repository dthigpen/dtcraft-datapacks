#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

mkdir server
echo "Downloading Minecraft server jar"
wget -q -P server https://launcher.mojang.com/v1/objects/125e5adf40c659fd3bce3e66e67a16bb49ecc1b9/server.jar

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