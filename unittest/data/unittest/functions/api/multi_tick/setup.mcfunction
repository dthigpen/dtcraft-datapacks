
summon marker ~ ~ ~ {Tags:["unittest", "init"], data:{tick:0, results:[]}}
execute as @e[type=marker,tag=unittest,tag=init,limit=1] run data modify entity @s data.name set from storage unittest:in name
execute as @e[type=marker,tag=unittest,tag=init] run tag @s remove init

tellraw @p ["Setup Multi-tick Test Case: ",{"nbt":"name","storage":"unittest:in"}]