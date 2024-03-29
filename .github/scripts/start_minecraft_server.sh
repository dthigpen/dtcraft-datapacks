#!/usr/bin/env bash
set -x
set -euo pipefail
IFS=$'\n\t'

mkdir -p server
pushd server
echo "Downloading Minecraft Fabric server jar"
curl -s https://meta.fabricmc.net/v2/versions/loader/1.20.2/0.14.22/0.11.2/server/jar -o server.jar

mkdir -p mods
pushd mods
echo "Downloading Carpet mod"
wget -q https://github.com/gnembon/fabric-carpet/releases/download/1.4.118/fabric-carpet-1.20.2-1.4.118+v230921.jar
popd

echo "eula=true" > eula.txt
echo "rcon.port=25575" >> server.properties
echo "enable-rcon=true" >> server.properties
echo "rcon.password=${RCON_PWD:-minecraft}" >> server.properties
echo "enable-command-block=true" >> server.properties
screen -dmS minecraft java -Xmx2048M -Xms2048M -jar server.jar nogui
popd
echo "Waiting for RCON server to start up"
sleep 20
function wait_for_startup {
tail -f server/logs/latest.log | sed '/.*! For help.*/ q' && echo "Server Started!"
}
export -f wait_for_startup
timeout 180 bash -c wait_for_startup || cat server/logs/latest.log
