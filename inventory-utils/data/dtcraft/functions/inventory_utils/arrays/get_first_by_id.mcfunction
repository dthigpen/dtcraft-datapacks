#say get_first_by_id

data modify storage dtcraft:tmp items set from storage dtcraft:tmp arg1
data modify storage dtcraft:tmp id set from storage dtcraft:tmp arg2

data modify storage dtcraft:tmp result set value {}
execute store result score size1 dt.tmp run data get storage dtcraft:tmp items
# implicitly set args
execute if score size1 dt.tmp matches 1.. run function dtcraft:inventory_utils/arrays/get_first_by_id_loop
execute if score size1 dt.tmp matches 0 run scoreboard players operation result dt.tmp = #not_found dt.enum