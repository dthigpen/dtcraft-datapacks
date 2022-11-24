#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

mkdir server
pushd server
echo "Downloading Minecraft Fabric server jar"
curl -s https://meta.fabricmc.net/v2/versions/loader/1.19.2/0.14.10/0.11.1/server/jar -o server.jar

mkdir mods
pushd mods
echo "Downloading Carpet mod"
wget -q https://github.com/gnembon/fabric-carpet/releases/download/1.4.84/fabric-carpet-1.19.2-1.4.84+v221018.jar
popd

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