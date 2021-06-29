function call_stack:push

data modify storage call_stack: this.item set from storage call_stack: this.arg0

execute store result score int1 dt.tmp run data get storage call_stack: this.item.Slot
data modify storage call_stack: this.item.Slot set value 0
data modify block 2999999 255 2999999 Items set value []
data modify block 2999999 255 2999999 Items append from storage call_stack: this.item

data modify storage call_stack: this.inventory_before set from entity @s Inventory
loot give @s mine 2999999 255 2999999 stick{drop_contents:true}
data modify storage call_stack: this.inventory_after set from entity @s Inventory

execute store success storage call_stack: this.result byte 1 run data modify storage call_stack: this.inventory_before set from storage call_stack: this.inventory_after

function call_stack:pop