
scoreboard objectives add dt.tmp
scoreboard players reset * dt.tmp

function version:api/setup {args: {\
    id:"$version", \
    version:[0,1,0] \
}}
execute unless score $version load.status matches 1 run tellraw @a ["Error: ",{"text":"version","bold":true}," datapack could not be loaded"]