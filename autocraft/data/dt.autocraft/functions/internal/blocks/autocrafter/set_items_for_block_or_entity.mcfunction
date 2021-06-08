function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0
execute if data block ~ ~ ~ Items run data modify block ~ ~ ~ Items set from storage call_stack: this.items
execute unless data block ~ ~ ~ Items as @e[predicate=dt.autocraft:hopper_minecraft,sort=nearest,limit=1] run data modify entity @s Items set from storage call_stack: this.items

function call_stack:pop