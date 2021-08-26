#> dt.custom_block:api/block/destroy
# Spawn an item entity for the custom block destroyed at ~ ~ ~.
function call_stack:push

# kill default spawner xp
kill @e[type=experience_orb, distance=..0.5]

# summon xp if specified in properties
execute if data entity @s Item.tag.hold.block.xp run data modify storage call_stack: call.arg0 set from entity @s Item.tag.hold.block.xp.value
execute if data entity @s Item.tag.hold.block.xp run data modify storage call_stack: call.arg1 set from entity @s Item.tag.hold.block.xp.count
execute if data entity @s Item.tag.hold.block.xp run function dt.custom_block:internal/summon_xp

# summon the loot item
data modify storage call_stack: call.arg0 set from entity @s Item.tag.hold
function dt.custom_block:api/item/summon
kill @s

function call_stack:pop