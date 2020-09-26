#say get by id

data modify storage dtcraft:tmp items set from storage dtcraft:tmp arg1
data modify storage dtcraft:tmp id set from storage dtcraft:tmp arg2

#region check id equality
data modify storage dtcraft:tmp val1 set from storage dtcraft:tmp id
data modify storage dtcraft:tmp val2 set from storage dtcraft:tmp items[0].id
execute store success score result dt.tmp run data modify storage dtcraft:tmp val1 set from storage dtcraft:tmp val2
#endregion

execute if score result dt.tmp = #equal dt.enum run data modify storage dtcraft:tmp result append from storage dtcraft:tmp items[0]
data remove storage dtcraft:tmp items[0]
execute store result score size1 dt.tmp run data get storage dtcraft:tmp items

data modify storage dtcraft:tmp arg1 set from storage dtcraft:tmp items
data modify storage dtcraft:tmp arg2 set from storage dtcraft:tmp id
execute if score size1 dt.tmp matches 1.. run function dtcraft:inventory_utils/arrays/get_all_by_id_loop