#say load click-craft

#[[[cog
#   from datapack_utils import utils
#   from datapack_utils.utils import Pack
#   
#   cog.outl(utils.setup_versioning(
#       Pack('dt.click_craft',Pack.Version(1,0,0),name='Click Craft',
#           dependencies = [
#               Pack('call_stack',Pack.Version(1,0,0),name='call-stack'),
#               Pack('dt.array',Pack.Version(0,2,0),name='Array')
#           ]
#       ))
#   )
#]]]

scoreboard players set $dt.click_craft.version.major load.status 1
scoreboard players set $dt.click_craft.version.minor load.status 0
scoreboard players set $dt.click_craft.version.patch load.status 0

scoreboard players set $dt.click_craft load.status 1

# check for call-stack datapack
execute unless score $call_stack load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Click Craft","bold":true}," requires ",{"text":"call-stack ","bold":true},"1.0"]
scoreboard players set $dt.tmp.dep load.status 0
execute if score $call_stack.version.major load.status matches 1 if score $call_stack.version.minor load.status matches 0.. run scoreboard players set $dt.tmp.dep load.status 1
execute if score $call_stack load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Click Craft","bold":true}," expected ",{"text":"call-stack ","bold":true},"1.0"," but found ",{"score":{"name":"$call_stack.version.major","objective":"load.status"}},".",{"score":{"name":"$call_stack.version.minor","objective":"load.status"}}]
execute if score $call_stack load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run scoreboard players set $dt.click_craft load.status 0

# check for Array datapack
execute unless score $dt.array load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Click Craft","bold":true}," requires ",{"text":"Array ","bold":true},"0.2"]
scoreboard players set $dt.tmp.dep load.status 0
execute if score $dt.array.version.major load.status matches 0 if score $dt.array.version.minor load.status matches 2.. run scoreboard players set $dt.tmp.dep load.status 1
execute if score $dt.array load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Click Craft","bold":true}," expected ",{"text":"Array ","bold":true},"0.2"," but found ",{"score":{"name":"$dt.array.version.major","objective":"load.status"}},".",{"score":{"name":"$dt.array.version.minor","objective":"load.status"}}]
execute if score $dt.array load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run scoreboard players set $dt.click_craft load.status 0

scoreboard players reset $dt.tmp.dep load.status

#[[[end]]]

say loading click_craft
scoreboard objectives add dt.craft.state dummy
scoreboard players set @a dt.craft.state 0
scoreboard players set #inventory dt.craft.state -1
scoreboard players set #recipes dt.craft.state -2
scoreboard players set #inventory_reset dt.craft.state -3


# todo change this to dt.craft for easier invokation
scoreboard objectives add dt.click_craft trigger
scoreboard players enable @a dt.click_craft

# Used for id item selection in the given state when clicking on buttons
scoreboard objectives add dt.cc.select trigger
scoreboard players enable @a dt.cc.select

# temp
scoreboard objectives add dt.cc.tmp dummy
scoreboard players reset * dt.cc.tmp

function dt.click_craft:internal/setup_items