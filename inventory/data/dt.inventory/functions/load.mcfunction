#say load inventory_utils

scoreboard players set $dt.inventory.version.major load 0
scoreboard players set $dt.inventory.version.minor load 1
scoreboard players set $dt.inventory.version.patch load 0

scoreboard objectives add dt.enum dummy
scoreboard players set #equal dt.enum 0
scoreboard players set #not_equal dt.enum 1
scoreboard players set #found dt.enum 0
scoreboard players set #not_found dt.enum 1

function dt.inventory:load_shulker