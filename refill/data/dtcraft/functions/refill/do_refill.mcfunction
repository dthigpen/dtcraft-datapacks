#say do_refill

data modify storage dtcraft:refill this_user set from storage dtcraft:tmp arg1
data modify storage dtcraft:refill item set from storage dtcraft:tmp arg2

data modify storage dtcraft:refill original_slot set from storage dtcraft:refill item.Slot
#execute store result score int1 dt.tmp run data get storage this_user.data.selected.slot
data modify storage dtcraft:refill item.Slot set from storage dtcraft:refill this_user.data.selected.slot

data modify storage dtcraft:tmp arg1 set from storage dtcraft:refill item
function dtcraft:inventory_utils/replace_slot

data modify storage dtcraft:tmp arg1 set value {Slot:0b, id:"minecraft:air", Count:1b}
data modify storage dtcraft:tmp arg1.Slot set from storage dtcraft:refill original_slot
function dtcraft:inventory_utils/replace_slot