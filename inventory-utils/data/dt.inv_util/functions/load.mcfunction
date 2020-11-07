#say load inventory_utils

scoreboard players set $invutil.major load 0
scoreboard players set $invutil.minor load 1
scoreboard players set $invutil.patch load 0

scoreboard objectives add dt.enum dummy
scoreboard players set #equal dt.enum 0
scoreboard players set #not_equal dt.enum 1
scoreboard players set #found dt.enum 0
scoreboard players set #not_found dt.enum 1

function dt.inv_util:load_shulker