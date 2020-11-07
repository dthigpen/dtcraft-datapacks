#say load inventory-sort

scoreboard players set $invsort.major load 0
scoreboard players set $invsort.minor load 1
scoreboard players set $invsort.patch load 0

schedule clear inv_sort:tick
scoreboard players set $invsort load 0
execute if score $callstack.major load matches 0 if score $callstack.minor load matches 0.. if score $invutil.major load matches 0 if score $invutil.minor load matches 0.. run scoreboard players set $invsort load 1
execute unless score $invsort load matches 1 run say Datapack Inventory-sort cannot be loaded
execute if score $invsort load matches 1 run schedule function inv_sort:tick 1t replace

scoreboard objectives add dt.enum dummy
scoreboard players set #equal dt.enum 0
scoreboard players set #not_equal dt.enum 1
scoreboard players set #found dt.enum 0
scoreboard players set #not_found dt.enum 1


scoreboard objectives add dt.tmp dummy
scoreboard objectives add dt.sort trigger

data merge storage dt.inv_sort: {}

function inv_sort:load_storage
function dt.inv_util:load_shulker

gamerule maxCommandChainLength 500000