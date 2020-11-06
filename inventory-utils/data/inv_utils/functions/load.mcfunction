#say load inventory_utils

scoreboard players set $invutils.major load 0
scoreboard players set $invutils.minor load 1
scoreboard players set $invutils.patch load 0

scoreboard objectives add dt.enum dummy
scoreboard players set #equal dt.enum 0
scoreboard players set #not_equal dt.enum 1
scoreboard players set #found dt.enum 0
scoreboard players set #not_found dt.enum 1

function inv_utils:load_shulker

scoreboard objectives add dt.inv_utils dummy