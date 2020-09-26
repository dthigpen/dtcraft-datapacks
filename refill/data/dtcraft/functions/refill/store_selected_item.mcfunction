#say store selected
data modify storage dtcraft:refill this_user set from storage dtcraft:tmp arg1

data modify storage dtcraft:refill this_user.data.selected set from entity @s SelectedItem
data modify storage dtcraft:refill this_user.data.selected.slot set from entity @s SelectedItemSlot
data modify storage dtcraft:tmp result set from storage dtcraft:refill this_user