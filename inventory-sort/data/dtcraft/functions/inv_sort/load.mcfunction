#say load inventory-sort

scoreboard objectives add dt.enum dummy
scoreboard players set #equal dt.enum 0
scoreboard players set #not_equal dt.enum 1
scoreboard players set #found dt.enum 0
scoreboard players set #not_found dt.enum 1


scoreboard objectives add dt.tmp dummy
scoreboard objectives add dt.sort trigger

data merge storage dtcraft:inv_sort {}

function dtcraft:inv_sort/load_storage
function dtcraft:inventory_utils/load_shulker