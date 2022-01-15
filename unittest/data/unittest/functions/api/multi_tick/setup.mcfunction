
summon marker ~ ~ ~ {Tags:["unittest", "init"], data:{tick:0,suite:{name:"Unnamed", results:[]}}}
execute as @e[type=marker,tag=unittest,tag=init,limit=1] run data modify entity @s data.suite.name set from storage unittest:in name
execute as @e[type=marker,tag=unittest,tag=init] run tag @s remove init

# tellraw @s ["Setup Multi-tick Test Case: ",{"nbt":"name","storage":"unittest:in"}]