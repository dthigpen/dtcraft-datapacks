function call_stack:push
data modify storage call_stack: call.arg0 set from storage call_stack: this.arg0
function dt.inventory:api/shulker/items/set

data modify storage call_stack: this.inventory_before set from entity @s Inventory

function dt.inventory:api/shulker/loot/replace/hotbar

data modify storage call_stack: this.inventory_after set from entity @s Inventory
execute store success storage call_stack: this.result byte 1 run data modify storage call_stack: this.inventory_before set from storage call_stack: this.inventory_after

function call_stack:pop