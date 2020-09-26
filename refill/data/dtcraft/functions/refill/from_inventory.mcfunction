#say from_inventory
data modify storage dtcraft:refill this_user set from storage dtcraft:tmp arg1

function dtcraft:inventory_utils/get_inventory
data modify storage dtcraft:refill items set from storage dtcraft:tmp result

data modify storage dtcraft:tmp arg1 set from storage dtcraft:refill items
data modify storage dtcraft:tmp arg2 set from storage dtcraft:refill this_user.data.selected.id
function dtcraft:inventory_utils/arrays/get_first_by_id
data modify storage dtcraft:refill item_found set from storage dtcraft:tmp result

execute if score result dt.tmp = #found dt.enum run data modify storage dtcraft:tmp arg1 set from storage dtcraft:refill this_user
execute if score result dt.tmp = #found dt.enum run data modify storage dtcraft:tmp arg2 set from storage dtcraft:refill item_found
execute if score result dt.tmp = #found dt.enum run function dtcraft:refill/do_refill
execute if score result dt.tmp = #not_found dt.enum run data remove storage dtcraft:refill this_user.data.selected