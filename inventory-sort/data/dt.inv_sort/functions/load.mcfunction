# say load inventory-sort

#[[[cog
#   from datapack_utils import utils
#   from datapack_utils.utils import Pack
#   
#   cog.outl(utils.setup_versioning(
#       Pack('dt.inv_sort',Pack.Version(1,0,0),name='Inventory-Sort',tick_function='dt.inv_sort:internal/tick',
#           dependencies = [
#               Pack('call_stack',Pack.Version(1,0,0),name='call-stack'),
#               Pack('dt.inventory',Pack.Version(2,0,0),name='Inventory')
#           ]
#       ))
#   )
#]]]

scoreboard players set $dt.inv_sort.version.major load.status 1
scoreboard players set $dt.inv_sort.version.minor load.status 0
scoreboard players set $dt.inv_sort.version.patch load.status 0

scoreboard players set $dt.inv_sort load.status 1

# check for call-stack datapack
execute unless score $call_stack load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Inventory-Sort","bold":true}," requires ",{"text":"call-stack ","bold":true},"1.0"]
scoreboard players set $dt.tmp.dep load.status 0
execute if score $call_stack.version.major load.status matches 1 if score $call_stack.version.minor load.status matches 0.. run scoreboard players set $dt.tmp.dep load.status 1
execute if score $call_stack load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Inventory-Sort","bold":true}," expected ",{"text":"call-stack ","bold":true},"1.0"," but found ",{"score":{"name":"$call_stack.version.major","objective":"load.status"}},".",{"score":{"name":"$call_stack.version.minor","objective":"load.status"}}]
execute if score $call_stack load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run scoreboard players set $dt.inv_sort load.status 0

# check for Inventory datapack
execute unless score $dt.inventory load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Inventory-Sort","bold":true}," requires ",{"text":"Inventory ","bold":true},"2.0"]
scoreboard players set $dt.tmp.dep load.status 0
execute if score $dt.inventory.version.major load.status matches 2 if score $dt.inventory.version.minor load.status matches 0.. run scoreboard players set $dt.tmp.dep load.status 1
execute if score $dt.inventory load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Inventory-Sort","bold":true}," expected ",{"text":"Inventory ","bold":true},"2.0"," but found ",{"score":{"name":"$dt.inventory.version.major","objective":"load.status"}},".",{"score":{"name":"$dt.inventory.version.minor","objective":"load.status"}}]
execute if score $dt.inventory load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run scoreboard players set $dt.inv_sort load.status 0

scoreboard players reset $dt.tmp.dep load.status
# Only tick if successfully loaded
schedule clear dt.inv_sort:internal/tick
execute if score $dt.inv_sort load.status matches 1 run schedule function dt.inv_sort:internal/tick 1t replace
#[[[end]]]

scoreboard objectives add dt.inv_sort dummy
scoreboard objectives add dt.tmp dummy
scoreboard objectives add dt.sort trigger
scoreboard players enable @a dt.sort
scoreboard objectives add dt.sort_chest trigger
scoreboard players enable @a dt.sort_chest

data merge storage dt.inv_sort: {}

function dt.inv_sort:internal/load_storage

execute store result score $max dt.tmp run gamerule maxCommandChainLength
execute if score $max dt.tmp matches ..499999 run gamerule maxCommandChainLength 500000
execute if score $max dt.tmp matches ..499999 run tellraw @p ["Increased maxCommandChainLength from ",{"score":{"name":"$max","objective":"dt.tmp"}}, " to 500000"]