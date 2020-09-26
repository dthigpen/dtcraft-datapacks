#say load inventory_utils

scoreboard objectives add dt.enum dummy
scoreboard players set #equal dt.enum 0
scoreboard players set #not_equal dt.enum 1
scoreboard players set #found dt.enum 0
scoreboard players set #not_found dt.enum 1

function dtcraft:inventory_utils/load_shulker

scoreboard objectives add dt.inv_utils dummy