#say refill_if_same_slot

data modify storage dtcraft:refill this_user set from storage dtcraft:tmp arg1
# Check that the slots are the same, if so continue
execute store result score int1 dt.tmp run data get storage dtcraft:refill this_user.data.selected.slot
execute store result score int2 dt.tmp run data get entity @s SelectedItemSlot
## implicitly pass arg1
execute if score int1 dt.tmp = int2 dt.tmp run function dtcraft:refill/from_inventory