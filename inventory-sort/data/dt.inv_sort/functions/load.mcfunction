#say load inventory-sort

scoreboard players set $dt.inv_sort.version.major load 0
scoreboard players set $dt.inv_sort.version.minor load 1
scoreboard players set $dt.inv_sort.version.patch load 0

schedule clear dt.inv_sort:tick
scoreboard players set $dt.inv_sort load 0
execute if score $call_stack.version.major load matches 0 if score $call_stack.version.minor load matches 0.. if score $dt.inv_util.version.major load matches 0 if score $dt.inv_util.version.minor load matches 0.. run scoreboard players set $dt.inv_sort load 1
execute unless score $dt.inv_sort load matches 1 run say Datapack Inventory-sort cannot be loaded
execute if score $dt.inv_sort load matches 1 run schedule function dt.inv_sort:tick 1t replace

scoreboard objectives add dt.enum dummy
scoreboard players set #equal dt.enum 0
scoreboard players set #not_equal dt.enum 1
scoreboard players set #found dt.enum 0
scoreboard players set #not_found dt.enum 1


scoreboard objectives add dt.tmp dummy
scoreboard objectives add dt.sort trigger

data merge storage dt.inv_sort: {}

function dt.inv_sort:load_storage
function dt.inv_util:load_shulker

gamerule maxCommandChainLength 500000