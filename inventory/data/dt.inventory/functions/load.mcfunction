say load inventory

scoreboard players set $dt.inventory.version.major load.status 0
scoreboard players set $dt.inventory.version.minor load.status 1
scoreboard players set $dt.inventory.version.patch load.status 0

scoreboard objectives add dt.enum dummy
scoreboard players set #equal dt.enum 0
scoreboard players set #not_equal dt.enum 1
scoreboard players set #found dt.enum 0
scoreboard players set #not_found dt.enum 1

function dt.inventory:load_shulker