function call_stack:push

data modify storage call_stack: this.items set value []
data modify storage call_stack: this.items append from entity @s Inventory[{tag:{dt:{type:"result_placeholder"}}}]
data remove storage call_stack: this.items[].tag

data modify storage call_stack: call.arg0 set from storage call_stack: this.items
data modify storage call_stack: call.arg0[].id set value "minecraft:air"
function dt.inventory:api/player/items/replace
data modify storage call_stack: call.arg0 set from storage call_stack: this.items
function dt.inventory:api/shulker/items/set
function dt.inventory:api/shulker/loot/give/player

function call_stack:pop