#say load inventory-sort

scoreboard players set $dt.inv_sort.version.major load.status 0
scoreboard players set $dt.inv_sort.version.minor load.status 1
scoreboard players set $dt.inv_sort.version.patch load.status 0

schedule clear dt.inv_sort:tick
scoreboard players set $dt.inv_sort load.status 0
execute if score $call_stack.version.major load.status matches 0 if score $call_stack.version.minor load.status matches 0.. if score $dt.inventory.version.major load.status matches 0 if score $dt.inventory.version.minor load.status matches 0.. run scoreboard players set $dt.inv_sort load.status 1
execute unless score $dt.inv_sort load.status matches 1 run say Datapack Inventory-sort cannot be loaded
execute if score $dt.inv_sort load.status matches 1 run schedule function dt.inv_sort:tick 1t replace

scoreboard objectives add dt.enum dummy
scoreboard players set #equal dt.enum 0
scoreboard players set #not_equal dt.enum 1
scoreboard players set #found dt.enum 0
scoreboard players set #not_found dt.enum 1


scoreboard objectives add dt.tmp dummy
scoreboard objectives add dt.sort trigger
scoreboard players enable @a dt.sort

data merge storage dt.inv_sort: {}

function dt.inv_sort:load_storage
function dt.inventory:load_shulker

gamerule maxCommandChainLength 500000