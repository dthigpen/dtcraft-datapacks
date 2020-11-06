#say load dt_refill

scoreboard players set $refill.major load 0
scoreboard players set $refill.minor load 1
scoreboard players set $refill.patch load 0

schedule clear refill:tick

scoreboard objectives add dt.enum dummy
scoreboard players set #equal dt.enum 0
scoreboard players set #not_equal dt.enum 1
scoreboard players set #found dt.enum 0
scoreboard players set #not_found dt.enum 1

scoreboard objectives add dt.refill.toggle trigger

# TODO Preserve users if present already
data merge storage dtcraft:refill {users:[]}

function inv_utils:load_shulker


scoreboard players set $refill load 0
execute if score $callstack.major load matches 0 if score $callstack.minor load matches 1 if score $userutils.major load matches 0 if score $userutils.minor load matches 1 if score $invutils.major load matches 0 if score $invutils.minor load matches 1 run scoreboard players set $refill load 1
execute unless score $refill load matches 1 run say Datapack Refill cannot be loaded
execute if score $refill load matches 1 run schedule function refill:tick 1t replace