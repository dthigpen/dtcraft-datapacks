#say load dt_refill

#[[[cog
#   from datapack_utils import utils
#   from datapack_utils.utils import Pack
#   
#   cog.outl(utils.setup_versioning(
#       Pack('dt.refill',Pack.Version(1,0,0),name='Refill',tick_function='dt.refill:tick',
#           dependencies = [
#               Pack('call_stack',Pack.Version(0,1,0),name='call-stack'),
#               Pack('dt.user_util',Pack.Version(1,0,0),name='user-util'),
#               Pack('dt.array',Pack.Version(0,2,0),name='Array'),
#               Pack('dt.inventory',Pack.Version(2,0,0),name='Inventory')
#           ]
#       ))
#   )
#]]]

scoreboard players set $dt.refill.version.major load.status 1
scoreboard players set $dt.refill.version.minor load.status 0
scoreboard players set $dt.refill.version.patch load.status 0

scoreboard players set $dt.refill load.status 1

# check for call-stack datapack
execute unless score $call_stack load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Refill","bold":true}," requires ",{"text":"call-stack ","bold":true},"0.1"]
scoreboard players set $dt.tmp.dep load.status 0
execute if score $call_stack.version.major load.status matches 0 if score $call_stack.version.minor load.status matches 1.. run scoreboard players set $dt.tmp.dep load.status 1
execute if score $call_stack load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Refill","bold":true}," expected ",{"text":"call-stack ","bold":true},"0.1"," but found ",{"score":{"name":"$call_stack.version.major","objective":"load.status"}},".",{"score":{"name":"$call_stack.version.minor","objective":"load.status"}}]
execute if score $call_stack load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run scoreboard players set $dt.refill load.status 0

# check for user-util datapack
execute unless score $dt.user_util load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Refill","bold":true}," requires ",{"text":"user-util ","bold":true},"1.0"]
scoreboard players set $dt.tmp.dep load.status 0
execute if score $dt.user_util.version.major load.status matches 1 if score $dt.user_util.version.minor load.status matches 0.. run scoreboard players set $dt.tmp.dep load.status 1
execute if score $dt.user_util load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Refill","bold":true}," expected ",{"text":"user-util ","bold":true},"1.0"," but found ",{"score":{"name":"$dt.user_util.version.major","objective":"load.status"}},".",{"score":{"name":"$dt.user_util.version.minor","objective":"load.status"}}]
execute if score $dt.user_util load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run scoreboard players set $dt.refill load.status 0

# check for Array datapack
execute unless score $dt.array load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Refill","bold":true}," requires ",{"text":"Array ","bold":true},"0.2"]
scoreboard players set $dt.tmp.dep load.status 0
execute if score $dt.array.version.major load.status matches 0 if score $dt.array.version.minor load.status matches 2.. run scoreboard players set $dt.tmp.dep load.status 1
execute if score $dt.array load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Refill","bold":true}," expected ",{"text":"Array ","bold":true},"0.2"," but found ",{"score":{"name":"$dt.array.version.major","objective":"load.status"}},".",{"score":{"name":"$dt.array.version.minor","objective":"load.status"}}]
execute if score $dt.array load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run scoreboard players set $dt.refill load.status 0

# check for Inventory datapack
execute unless score $dt.inventory load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Refill","bold":true}," requires ",{"text":"Inventory ","bold":true},"1.0"]
scoreboard players set $dt.tmp.dep load.status 0
execute if score $dt.inventory.version.major load.status matches 1 if score $dt.inventory.version.minor load.status matches 0.. run scoreboard players set $dt.tmp.dep load.status 1
execute if score $dt.inventory load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Refill","bold":true}," expected ",{"text":"Inventory ","bold":true},"1.0"," but found ",{"score":{"name":"$dt.inventory.version.major","objective":"load.status"}},".",{"score":{"name":"$dt.inventory.version.minor","objective":"load.status"}}]
execute if score $dt.inventory load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run scoreboard players set $dt.refill load.status 0

scoreboard players reset $dt.tmp.dep load.status
# Only tick if successfully loaded
schedule clear dt.refill:tick
execute if score $dt.refill load.status matches 1 run schedule function dt.refill:tick 1t replace
#[[[end]]]

scoreboard objectives add dt.enum dummy
scoreboard players set #equal dt.enum 0
scoreboard players set #not_equal dt.enum 1
scoreboard players set #found dt.enum 0
scoreboard players set #not_found dt.enum 1

scoreboard objectives add dt.refill.toggle trigger

# TODO Preserve users if present already
data merge storage dt.refill: {users:[]}

function dt.inventory:load_shulker

