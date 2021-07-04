function call_stack:push

data modify storage call_stack: this.item set from storage call_stack: this.arg0

data modify storage call_stack: this.item.Slot set value 0
data modify block 2999999 255 2999999 Items set value []
data modify block 2999999 255 2999999 Items append from storage call_stack: this.item

data modify storage call_stack: this.inventory_before set from block ~ ~ ~ Items
loot insert ~ ~ ~ mine 2999999 255 2999999 stick{drop_contents:true}
data modify storage call_stack: this.inventory_after set from block ~ ~ ~ Items

execute store success storage call_stack: this.result byte 1 run data modify storage call_stack: this.inventory_before set from storage call_stack: this.inventory_after

function call_stack:pop