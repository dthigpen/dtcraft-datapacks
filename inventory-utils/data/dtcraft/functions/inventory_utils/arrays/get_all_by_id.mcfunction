#say get_all_by_id

data modify storage dtcraft:tmp items set from storage dtcraft:tmp arg1
data modify storage dtcraft:tmp id set from storage dtcraft:tmp arg2

data modify storage dtcraft:tmp result set value []
execute store result score size1 dt.tmp run data get storage dtcraft:tmp items
# implicitly set args
execute if score size1 dt.tmp matches 1.. run function dtcraft:inventory_utils/arrays/get_all_by_id_loop
execute store result score size1 dt.tmp run data get storage dtcraft:tmp result
execute if score size1 dt.tmp matches 1.. run scoreboard players set result dt.tmp 1
execute if score size1 dt.tmp matches 0 run scoreboard players set result dt.tmp 0
#execute if score size1 dt.tmp matches 0 run scoreboard players operation result dt.tmp = #not_found dt.enum