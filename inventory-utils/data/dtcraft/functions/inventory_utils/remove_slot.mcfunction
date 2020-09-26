
data modify storage dtcraft:tmp slot set from storage dtcraft:tmp arg1

data modify storage dtcraft:tmp arg1 set value {id:"minecraft:air",Count:1b,Slot:0b}
data modify storage dtcraft:tmp arg1.Slot set from storage dtcraft:tmp slot
function dtcraft:inventory_utils/replace_slot