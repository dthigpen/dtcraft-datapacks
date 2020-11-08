# say refill_if_same_slot
function call_stack:push

data modify storage call_stack: this.this_user set from storage call_stack: this.arg0
# Check that the slots are the same, if so continue
execute store result score int1 dt.tmp run data get storage call_stack: this.this_user.data.selected.slot
execute store result score int2 dt.tmp run data get entity @s SelectedItemSlot

execute unless score int1 dt.tmp = int2 dt.tmp run data remove storage call_stack: this.this_user.data.selected
execute unless score int1 dt.tmp = int2 dt.tmp run data modify storage call_stack: this.result set from storage call_stack: this.this_user
execute if score int1 dt.tmp = int2 dt.tmp run data modify storage call_stack: call.arg0 set from storage call_stack: this.this_user
execute if score int1 dt.tmp = int2 dt.tmp run function dt.refill:from_inventory


function call_stack:pop