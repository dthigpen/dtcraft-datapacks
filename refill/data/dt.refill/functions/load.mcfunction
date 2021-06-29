#say load dt_refill

scoreboard players set $dt.refill.version.major load.status 0
scoreboard players set $dt.refill.version.minor load.status 1
scoreboard players set $dt.refill.version.patch load.status 0

schedule clear dt.refill:tick
scoreboard players set $dt.refill load.status 0
execute if score $call_stack.version.major load.status matches 0 if score $call_stack.version.minor load.status matches 0.. if score $dt.user_util.version.major load.status matches 0 if score $dt.user_util.version.minor load.status matches 0.. if score $dt.inventory.version.major load.status matches 0 if score $dt.inventory.version.minor load.status matches 0.. run scoreboard players set $dt.refill load.status 1
execute unless score $dt.refill load.status matches 1 run say Datapack Refill cannot be loaded
execute if score $dt.refill load.status matches 1 run schedule function dt.refill:tick 1t replace

scoreboard objectives add dt.enum dummy
scoreboard players set #equal dt.enum 0
scoreboard players set #not_equal dt.enum 1
scoreboard players set #found dt.enum 0
scoreboard players set #not_found dt.enum 1

scoreboard objectives add dt.refill.toggle trigger

# TODO Preserve users if present already
data merge storage dt.refill: {users:[]}

function dt.inventory:load_shulker

