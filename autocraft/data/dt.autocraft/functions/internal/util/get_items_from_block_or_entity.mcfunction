function call_stack:push
data modify storage call_stack: this.return set value []

# Get items from block if this is a block entity, otherwise get from NBT of hopper_minecart at block
execute if data block ~ ~ ~ Items run data modify storage call_stack: this.return set from block ~ ~ ~ Items
execute unless data block ~ ~ ~ Items as @e[predicate=dt.autocraft:hopper_minecraft,limit=1,sort=nearest] run data modify storage call_stack: this.return set from entity @s Items

function call_stack:pop