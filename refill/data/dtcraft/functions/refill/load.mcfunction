#say load dt_refill

scoreboard objectives add dt.enum dummy
scoreboard players set #equal dt.enum 0
scoreboard players set #not_equal dt.enum 1
scoreboard players set #found dt.enum 0
scoreboard players set #not_found dt.enum 1


scoreboard objectives add dt.tmp dummy
scoreboard objectives add dt.refill.toggle trigger

# TODO Preserve users if present already
data merge storage dtcraft:refill {users:[]}

function dtcraft:inventory_utils/load_shulker